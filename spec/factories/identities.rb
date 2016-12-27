# == Schema Information
#
# Table name: identities
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_identities_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :identity do
    user nil
    provider "MyString"
    uid "MyString"
    created_at "2016-12-24 13:51:01"
    updated_at "2016-12-24 13:51:01"
  end
end
