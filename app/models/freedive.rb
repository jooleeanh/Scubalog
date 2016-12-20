class Freedive < ApplicationRecord
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
  DIVE_TYPES = %w(Snorkeling Spearfishing CNF CWT FIM VWT NLT STA DYN DNF The\ Jump\ Blue Speed\ Endurance Skandalopetra)
end
