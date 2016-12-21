# == Schema Information
#
# Table name: divespots
#
#  id               :integer          not null, primary key
#  name             :string
#  max_depth        :float
#  avg_depth        :float
#  salinity         :float
#  shore            :boolean
#  entry_difficulty :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  location         :hstore
#  latitude         :float
#  longitude        :float
#

require 'rails_helper'
require 'support/shared_examples_for_geocoding'

RSpec.describe Divespot, type: :model do
  let(:divespot) { FactoryGirl.create(:divespot) }

  it "is valid with valid attributes"
  it "has a name"
  it "has a longitude"
  it "has a latitude"
  it "can have many dives"

  include_examples "test_geocoding" do
    let(:object) { divespot }
  end
end
