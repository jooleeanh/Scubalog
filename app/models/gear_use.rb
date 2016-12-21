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

class GearUse < ApplicationRecord
  belongs_to :gear_set
  belongs_to :gear
end
