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

class Dive < ApplicationRecord
  belongs_to :divable, polymorphic: true

  def add_dive_type(dive_type)
    dive_types_will_change!
    update_attributes dive_types: dive_types.push(dive_type)
  end
end
