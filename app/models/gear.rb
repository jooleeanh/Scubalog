# == Schema Information
#
# Table name: gears
#
#  id           :integer          not null, primary key
#  category     :string
#  brand        :string
#  model        :string
#  size         :string
#  detail       :string
#  purchased_on :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Gear < ApplicationRecord
  DIVING = %w(mask snorkel fins wetsuit light gloves footwear weightbelt weight computer camera buoy)
  SCUBADIVING = %w(tank bcd regulator drysuit compass undergarment)
  FREEDIVING = %w(noseclip lanyard)
  SPEARFISHING = %w(speargun)
end
