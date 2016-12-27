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

FactoryGirl.define do
  factory :divespot do
    name "MyString"
    max_depth 1.5
    avg_depth 1.5
    salinity 1.5
    shore false
    entry_difficulty "MyString"
    location ""
    latitude 1.5
    longitude 1.5
    created_at "2016-12-24 13:41:37"
    updated_at "2016-12-24 13:41:37"
  end
end
