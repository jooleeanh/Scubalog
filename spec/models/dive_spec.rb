# == Schema Information
#
# Table name: dives
#
#  id              :integer          not null, primary key
#  divable_type    :string
#  divable_id      :integer
#  dive_types      :string           default("{}"), is an Array
#  computer        :boolean          default("false")
#  start_at        :datetime
#  end_at          :datetime
#  max_depth       :float
#  avg_depth       :float
#  min_temp        :integer
#  max_temp        :integer
#  sample_interval :integer
#  data_points     :json
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_dives_on_divable_type_and_divable_id  (divable_type,divable_id)
#

require 'rails_helper'

RSpec.describe Dive, type: :model do
  it "is valid with valid attributes"
  it "has a 'start_at' datetime"
  it "has a 'end_at' datetime"
  it "has a positive 'max_depth'"
  it "has a positive 'avg_depth'"
  it "has a positive 'min_temp'"
  it "has a positive 'max_temp'"
  it "belongs to a 'divable'"
  it "can import data from a dive computer"
  it "properly updates 'computer' field when importing from computer"
  it "returns 'data_points' in order"
  it "has a 'sample_interval' if 'data_points' present"
end
