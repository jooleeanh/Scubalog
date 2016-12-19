require 'rails_helper'

RSpec.describe Spot, type: :model do
  it "is valid with valid attributes"
  it "is not valid without a name"
  it "is not valid without a location"
  it "is not valid without a longitude"
  it "is not valid without a latitude"
  it "should geocode lat and lng from location"
  it "should reverse geocode location from lat and lng"
end
