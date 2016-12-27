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

FactoryGirl.define do
  factory :freedive_session do
    user nil
    divespot nil
    gear_set nil
    start_at "2016-12-24 13:44:34"
    end_at "2016-12-24 13:44:34"
    enjoyment 1
    comments "MyText"
    tip_for_others "MyText"
    map_tracks ""
    visibility 1
    created_at "2016-12-24 13:44:34"
    updated_at "2016-12-24 13:44:34"
  end
end
