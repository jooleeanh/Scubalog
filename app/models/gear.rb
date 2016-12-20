class Gear < ApplicationRecord
  DIVING = %w(mask snorkel fins wetsuit light gloves footwear weightbelt weight)
  SCUBADIVING = %w(tank bcd regulator drysuit compass undergarment)
  FREEDIVING = %w(noseclip lanyard)
end
