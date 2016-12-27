# == Schema Information
#
# Table name: gears
#
#  id         :integer          not null, primary key
#  category   :string
#  brand      :string
#  name       :string
#  size       :string
#  detail     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gear < ApplicationRecord
  DIVING = %w(mask snorkel fins wetsuit light gloves footwear weightbelt weight computer camera buoy)
  SCUBADIVING = %w(tank bcd regulator drysuit compass undergarment)
  FREEDIVING = %w(noseclip lanyard)
  SPEARFISHING = %w(speargun)
end
