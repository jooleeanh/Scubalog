class Gear < ApplicationRecord
  DIVING = %w(mask snorkel fins wetsuit light gloves footwear weightbelt weight computer camera buoy)
  SCUBADIVING = %w(tank bcd regulator drysuit compass undergarment)
  FREEDIVING = %w(noseclip lanyard)
  SPEARFISHING = %w(speargun)
end
