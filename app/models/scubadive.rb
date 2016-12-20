class Scubadive < ApplicationRecord
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
  DIVE_TYPES = %w(Night Drift Deep Shore Boat Lake Cave Cavern Wreck Reef Muck Class Scallop Lobster Shark Seal)
end
