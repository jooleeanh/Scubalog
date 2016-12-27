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

FactoryGirl.define do
  factory :gear_use do
    gear_set nil
    gear nil
    created_at "2016-12-24 13:46:43"
    updated_at "2016-12-24 13:46:43"
  end
end
