class Dive < ApplicationRecord
  belongs_to :divable, polymorphic: true

  def add_dive_type(dive_type)
    dive_types_will_change!
    update_attributes dive_types: dive_types.push(dive_type)
  end
end
