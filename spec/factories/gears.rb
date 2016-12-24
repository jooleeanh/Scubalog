# == Schema Information
#
# Table name: gears
#
#  id           :integer          not null, primary key
#  category     :string
#  brand        :string
#  name         :string
#  size         :string
#  detail       :string
#  purchased_on :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :gear do
    category "MyString"
    brand "MyString"
    name "MyString"
    size "MyString"
    detail "MyString"
    purchased_on "2016-12-24"
    created_at "2016-12-24 13:47:42"
    updated_at "2016-12-24 13:47:42"
  end
end
