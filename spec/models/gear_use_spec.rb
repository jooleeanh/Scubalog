require 'rails_helper'

RSpec.describe GearUse, type: :model do
  it "is valid with valid attributes"
  it "belongs to a gear_set"
  it "belongs to a gear"
  it "has a unique combination of gear and gear_set"
end
