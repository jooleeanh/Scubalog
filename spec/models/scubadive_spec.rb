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

require 'rails_helper'
require 'support/shared_examples_for_dives'

RSpec.describe Scubadive, type: :model do
  let(:scubadive) { FactoryGirl.create(:scubadive) }

  it "has one dive"
  it "has a positive start_air"
  it "has a positive end_air"

  include_examples "test_dive" do
    let(:object) { scubadive }
  end
end
