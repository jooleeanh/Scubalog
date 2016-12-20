require 'rails_helper'

RSpec.describe Freedive, type: :model do
  it "belongs to a user"
  it "belongs to a spot"
  it "belongs to a gear set"
  it "has many sightings"
  it "has many buddies"
  it "is valid with valid attributes"
  it "is not valid without a start_at value"
  it "is not valid without a end_at value"
  it "enjoyment is between 1 and 5"
  it "max_depth is positive"
  it "avg_depth is positive"
  it "min_temp is positive"
  it "max_temp is positive"
  it "visibility is positive"
end
