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

class Buddy < ApplicationRecord
  belongs_to :buddable, polymorphic: true
end
