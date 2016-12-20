class Sighting < ApplicationRecord
  belongs_to :sighteable, polymorphic: true
  belongs_to :animal
end
