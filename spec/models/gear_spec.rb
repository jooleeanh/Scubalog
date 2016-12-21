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

require 'rails_helper'

RSpec.describe Gear, type: :model do
  it "is valid with valid attributes"
  it "has a category"
end
