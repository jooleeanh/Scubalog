require 'rails_helper'

RSpec.describe Scubadive, type: :model do
  it "belongs to a user"
  it "belongs to a spot"
  it "belongs to a gear set"
  it "can have many sightings"
  it "can have many buddies"
  it "has a dive"
  it "is valid with valid attributes"
  it "has an enjoyment between 1 and 5"
  it "has a positive visibility"
  it "has a positive start_air"
  it "has a positive end_air"
end
