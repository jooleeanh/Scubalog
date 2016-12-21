# == Schema Information
#
# Table name: freedive_sessions
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  divespot_id    :integer
#  gear_set_id    :integer
#  start_at       :datetime
#  end_at         :datetime
#  enjoyment      :integer
#  comments       :text
#  tip_for_others :text
#  map_tracks     :json
#  visibility     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_freedive_sessions_on_divespot_id  (divespot_id)
#  index_freedive_sessions_on_gear_set_id  (gear_set_id)
#  index_freedive_sessions_on_user_id      (user_id)
#

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
