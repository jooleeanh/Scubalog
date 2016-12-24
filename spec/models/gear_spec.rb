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

require 'rails_helper'

RSpec.describe Gear, type: :model do
  it "is valid with valid attributes"
  it "has a category"
end
