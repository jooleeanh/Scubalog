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

FactoryGirl.define do
  factory :scubadive do
    user nil
    divespot nil
    gear_set nil
    enjoyment 1
    comments "MyText"
    tip_for_others "MyText"
    map_tracks ""
    visibility 1
    start_air 1
    end_air 1
    created_at "2016-12-24 13:51:45"
    updated_at "2016-12-24 13:51:45"
  end
end
