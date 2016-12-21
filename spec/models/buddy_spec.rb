# == Schema Information
#
# Table name: buddies
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  buddable_type :string
#  buddable_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_buddies_on_buddable_type_and_buddable_id  (buddable_type,buddable_id)
#  index_buddies_on_user_id                        (user_id)
#

require 'rails_helper'

RSpec.describe Buddy, type: :model do
  it "is valid with valid attributes"
  it "belongs to a buddable"
  it "belongs to a dive"
  it "has a unique combination of dive and buddable"
end
