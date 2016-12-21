# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#  admin                  :boolean          default("false")
#  name                   :string
#  facebook_picture_url   :string
#  google_picture_url     :string
#  dob                    :date
#  gender                 :integer
#  avatar_picture_url     :string
#  location               :hstore
#  latitude               :float
#  longitude              :float
#  preferences            :hstore
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'
require 'support/shared_examples_for_geocoding'

OmniAuth.config.test_mode = true

RSpec.describe User, type: :model do

  let(:user) { FactoryGirl.create(:user) }
  let(:new_user) { FactoryGirl.build(:user) }

  context "sessions and registrations" do
    context "user has not signed up yet" do
      it "is valid with valid attributes" do
        expect(new_user).to be_valid
      end
      it "is not valid without an email" do
        new_user.email = nil
        expect(new_user).to_not be_valid
      end
      it "is not valid without a password with 6 characters or more" do
        new_user.password = "12345"
        expect(new_user).to_not be_valid
      end
      it "is not valid without a first name" do
        new_user.first_name = nil
        expect(new_user).to_not be_valid
      end
      it "is not valid without a last name" do
        new_user.last_name = nil
        expect(new_user).to_not be_valid
      end
      it "is not valid without a avatar picture url" do
        new_user.avatar_picture_url = nil
        expect(new_user).to_not be_valid
      end

      it "can sign up with the sign-up form"
      it "can sign up with facebook"
      it "can sign up with google"
    end
    context "user has signed up" do
      it "confirmation e-mail is sent"
    end
    context "user has confirmed e-mail" do
      it "user is confirmed"
    end
    context "user is signed in" do
      before do
        login_as(new_user, scope: :user)
      end
      it "can access the update form"
      it "can change preferred picture (fb, google, custom)"
      it "can sign out"
    end
  end

  include_examples "test_geocoding" do
    let(:object) { user }
  end
end
