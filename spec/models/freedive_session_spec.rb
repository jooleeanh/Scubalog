require 'rails_helper'

RSpec.describe FreediveSession, type: :model do
  it "belongs to a user"
  it "belongs to a spot"
  it "belongs to a gear set"
  it "can have many sightings"
  it "can have many buddies"
  it "has one or more dives"
  it "is valid with valid attributes"
  it "has a start_at datetime"
  it "has a end_at datetime"
  it "has an enjoyment between 1 and 5"
  it "has a positive visibility"
end
