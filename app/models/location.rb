# Class used by Virtus Gem to attribute specific keys and data types
# to Hstore field in models

class Location
  include Virtus.model

  attribute :city, String
  attribute :state, String
  attribute :region, String
  attribute :country, String

  def self.dump(preferences)
    preferences.to_hash
  end

  def self.load(preferences)
    new(preferences)
  end
end
