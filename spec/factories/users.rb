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

FactoryGirl.define do
  factory :user do
    email "MyString"
    encrypted_password "MyString"
    reset_password_token "MyString"
    reset_password_sent_at "2016-12-24 13:54:56"
    remember_created_at "2016-12-24 13:54:56"
    sign_in_count 1
    current_sign_in_at "2016-12-24 13:54:56"
    last_sign_in_at "2016-12-24 13:54:56"
    current_sign_in_ip ""
    last_sign_in_ip ""
    created_at "2016-12-24 13:54:56"
    updated_at "2016-12-24 13:54:56"
    first_name "MyString"
    last_name "MyString"
    admin false
    name "MyString"
    facebook_picture_url "MyString"
    google_picture_url "MyString"
    dob "2016-12-24"
    gender 1
    avatar_picture_url "MyString"
    location ""
    latitude 1.5
    longitude 1.5
    preferences ""
  end
end
