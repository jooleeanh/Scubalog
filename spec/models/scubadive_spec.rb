# == Schema Information
#
# Table name: scubadives
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  divespot_id    :integer
#  gear_set_id    :integer
#  enjoyment      :integer
#  comments       :text
#  tip_for_others :text
#  map_tracks     :json
#  visibility     :integer
#  start_air      :integer
#  end_air        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_scubadives_on_divespot_id  (divespot_id)
#  index_scubadives_on_gear_set_id  (gear_set_id)
#  index_scubadives_on_user_id      (user_id)
#

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
