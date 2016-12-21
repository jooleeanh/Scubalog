# == Schema Information
#
# Table name: gear_sets
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_gear_sets_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe GearSet, type: :model do
  it "is valid with valid attributes"
  it "has a user"
  it "has at least one gear_use"
end
