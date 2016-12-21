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
