class Buddy < ApplicationRecord
  belongs_to :buddable, polymorphic: true
end
