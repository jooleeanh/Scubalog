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

require 'rails_helper'
require 'support/shared_examples_for_dives'

RSpec.describe FreediveSession, type: :model do
  let(:freedive_session) { FactoryGirl.create(:freedive_session) }

  it "has one or more dives"

  include_examples "test_dive" do
    let(:dive) { freedive_session }
  end
end
