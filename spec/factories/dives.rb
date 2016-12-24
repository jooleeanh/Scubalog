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

FactoryGirl.define do
  factory :dive do
    dive_types "MyString"
    computer false
    max_depth 1.5
    avg_depth 1.5
    min_temp 1
    max_temp 1
    sample_interval 1
    data_points ""
    start_at "2016-12-24 13:38:49"
    end_at "2016-12-24 13:38:49"
  end
end
