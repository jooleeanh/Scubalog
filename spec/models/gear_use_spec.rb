# == Schema Information
#
# Table name: gear_uses
#
#  id          :integer          not null, primary key
#  gear_set_id :integer
#  gear_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_gear_uses_on_gear_id      (gear_id)
#  index_gear_uses_on_gear_set_id  (gear_set_id)
#

require 'rails_helper'

RSpec.describe GearUse, type: :model do
  it "is valid with valid attributes"
  it "belongs to a gear_set"
  it "belongs to a gear"
  it "has a unique combination of gear and gear_set"
end
