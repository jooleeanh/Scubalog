# == Schema Information
#
# Table name: sightings
#
#  id              :integer          not null, primary key
#  animal_id       :integer
#  sighteable_type :string
#  sighteable_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_sightings_on_animal_id                          (animal_id)
#  index_sightings_on_sighteable_type_and_sighteable_id  (sighteable_type,sighteable_id)
#

FactoryGirl.define do
  factory :sighting do
    animal nil
    sighteable_type "MyString"
    sighteable_id 1
    created_at "2016-12-24 13:52:44"
    updated_at "2016-12-24 13:52:44"
  end
end
