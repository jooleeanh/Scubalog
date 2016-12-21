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

require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it "is valid with valid attributes"
  it "belongs to an animal"
  it "belongs to a sighteable"
  it "has a unique combination of animal and sighteable"
end
