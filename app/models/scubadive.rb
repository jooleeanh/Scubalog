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

class Scubadive < ApplicationRecord
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
  has_many :sightings, as: :sighteable
  has_many :buddies, as: :buddable
  has_one :dive, as: :divable

  # Possibly as a hstore for each type?
  DIVE_TYPES = %w(Night Drift Deep Shore Boat Lake Cave Cavern Wreck Reef Muck Class Scallop Lobster Shark Seal)
end
