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

require 'rails_helper'

RSpec.describe Animal, type: :model do
  it "is valid with valid attributes"
  it "has a name"
  it "has a unique name"
  it "can have many sightings"
  it "can have many dives through sightings"
  it "can have many divesites through dives"
  it "can be created by user during dive create"
  it "can have user-generated photos added?"
end
