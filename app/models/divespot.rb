# == Schema Information
#
# Table name: divespots
#
#  id               :integer          not null, primary key
#  name             :string
#  max_depth        :float
#  avg_depth        :float
#  salinity         :float
#  shore            :boolean
#  entry_difficulty :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  location         :hstore
#  latitude         :float
#  longitude        :float
#

class Divespot < ApplicationRecord
  serialize :location, Location
end
