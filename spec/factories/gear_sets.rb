# == Schema Information
#
# Table name: gear_sets
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_gear_sets_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :gear_set do
    user nil
    name "MyString"
    created_at "2016-12-24 13:45:49"
    updated_at "2016-12-24 13:45:49"
  end
end
