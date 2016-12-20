class Dive < ApplicationRecord
  belongs_to :divable, polymorphic: true
end
