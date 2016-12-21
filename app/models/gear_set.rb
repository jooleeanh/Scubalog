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

class GearSet < ApplicationRecord
  belongs_to :user
end
