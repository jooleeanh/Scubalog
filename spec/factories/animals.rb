# == Schema Information
#
# Table name: animals
#
#  id          :integer          not null, primary key
#  name        :string
#  image_url   :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :animal do
    name "MyString"
    image_url "MyString"
    description "MyText"
    created_at "2016-12-24 13:41:37"
    updated_at "2016-12-24 13:41:37"
  end
end
