class Scubadive < ApplicationRecord
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
end
