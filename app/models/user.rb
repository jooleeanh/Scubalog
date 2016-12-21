class User < ApplicationRecord
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/
  ADMINS = [
    "julian.honma@gmail.com",
    "nicolas.sitternolleau@yahoo.com",
    "personne6@hotmail.fr"
  ]

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :confirmable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates_format_of :email, :without => TEMP_EMAIL_REGEX, on: :update
  has_many :identities, dependent: :destroy
  after_update :set_default_picture, :set_admin

  enum gender: { undisclosed_gender: 0, male: 1, female: 2 }

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end

  def self.find_for_oauth(auth, signed_in_resource = nil)

    # Get the identity and user if they exist
    identity = Identity.find_for_oauth(auth)

    # If a signed_in_resource is provided it always overrides the existing user
    # to prevent the identity being locked with accidentally created accounts.
    # Note that this may leave zombie accounts (with no associated identity) which
    # can be cleaned up at a later date.
    user = signed_in_resource ? signed_in_resource : identity.user
    email = auth.info.email # if email_is_verified

    user = set_user(email, auth)
    set_image(user, auth)
    set_gender(user, auth)
    set_identity(user, identity)

    user.skip_confirmation! if user_complete_info?(user)
    user
  end

  private

  def set_default_picture
    unless picture_url?
      self.update(avatar_picture_url: "diver_avatar.png")
    end
  end

  def set_admin
    if ADMINS.include?(self.email) && picture_url?
      self.update_column(:admin, true)
    end
  end

  def picture_url?
    self.facebook_picture_url.present? || self.google_picture_url.present?
  end

  def self.set_user(email, auth)
    user = User.where(email: email).first
    if user.nil?
      user = User.new unless user
      user.email = email
      set_info(user, auth)
    end
    user
  end

  def self.set_identity(user, identity)
    if identity.user != user
      identity.user = user
      identity.save!
    end
  end

  def self.set_gender(user, auth)
    gender = auth.extra.raw_info.gender
    case gender
    when "undisclosed_gender" then gender = 0
    when "male" then gender = 1
    when "female" then gender = 2
    else gender = 0
    end
    user.update(gender: gender)
  end

  def self.set_info(user, auth)
    name = auth.extra.raw_info.name
    first_name = auth.extra.raw_info.first_name || auth.info.first_name
    last_name = auth.extra.raw_info.last_name || auth.info.last_name
    email = user.email ? user.email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com"

    user.update(
      name: name,
      first_name: first_name,
      last_name: last_name,
      email: email,
      password: Devise.friendly_token[0,20]
    )
  end

  def self.set_image(user, auth)
    case auth.provider
    when "google_oauth2"
      user.update_column(:google_picture_url, auth.info.image)
      user.update_column(:avatar_picture_url, auth.info.image) unless user.facebook_picture_url
    when "facebook"
      user.update_column(:facebook_picture_url, auth.info.image)
      user.update_column(:avatar_picture_url, auth.info.image)
    end
  end

  def self.user_complete_info?(user)
    user.respond_to?(:skip_confirmation) || user.email.nil?
  end
end
