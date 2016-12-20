class Freedive < ApplicationRecord
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
  has_many :sightings, as: :sighteable
  has_many :buddies, as: :buddable
  DIVE_TYPES = %w(Snorkeling Spearfishing CNF CWT FIM VWT NLT STA DYN DNF The\ Jump\ Blue Speed\ Endurance Skandalopetra)
end
