# == Schema Information
#
# Table name: divespots
#
#  id               :integer          not null, primary key
#  name             :string
#  location         :string
#  latitude         :float
#  longitude        :float
#  max_depth        :float
#  avg_depth        :float
#  salinity         :float
#  shore            :boolean
#  entry_difficulty :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Divespot, type: :model do
  it "is valid with valid attributes"
  it "has a name"
  it "has a longitude"
  it "has a latitude"
  it "can have many dives"
  it "should geocode lat and lng from location"
  it "should reverse geocode location from lat and lng"
end
