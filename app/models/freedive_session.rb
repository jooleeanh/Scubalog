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

class FreediveSession < ApplicationRecord
  include BasicDive
  belongs_to :user
  belongs_to :divespot
  belongs_to :gear_set
  has_many :sightings, as: :sighteable
  has_many :buddies, as: :buddable
  has_many :dives, as: :divable
  DIVE_TYPES = %w(Snorkeling Spearfishing CNF CWT FIM VWT NLT STA DYN DNF The\ Jump\ Blue Speed\ Endurance Skandalopetra)end
