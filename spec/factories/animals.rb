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
  end
end
