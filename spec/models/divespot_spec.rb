require 'rails_helper'

RSpec.describe Divespot, type: :model do
  it "is valid with valid attributes"
  it "has a name"
  it "has a location?"
  it "has a longitude"
  it "has a latitude"
  it "can have many dives"
  it "should geocode lat and lng from location"
  it "should reverse geocode location from lat and lng"
end
