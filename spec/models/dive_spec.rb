require 'rails_helper'

RSpec.describe Dive, type: :model do
  it "is valid with valid attributes"
  it "has a start_at datetime"
  it "has a end_at datetime"
  it "has a positive max_depth"
  it "has a positive avg_depth"
  it "has a positive min_temp"
  it "has a positive max_temp"
end
