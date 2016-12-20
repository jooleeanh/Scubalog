require 'rails_helper'

RSpec.describe Freedive, type: :model do
  it "belongs to a user"
  it "belongs to a spot"
  it "belongs to a gear set"
  it "can have many sightings"
  it "can have many buddies"
  it "can have a computer dive"
  it "is valid with valid attributes"
  it "has a start_at datetime"
  it "has a end_at datetime"
  it "has an enjoyment between 1 and 5"
  it "has a positive visibility"
  it "has a positive max_depth"
  it "has a positive avg_depth"
  it "has a positive min_temp"
  it "has a positive max_temp"
end
