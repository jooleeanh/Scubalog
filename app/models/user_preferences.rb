# Class used by Virtus Gem to attribute specific keys and data types
# to Hstore field in models

class UserPreferences
  include Virtus.model

  attribute :unit, String
  attribute :newsletter, Boolean

  def self.dump(preferences)
    preferences.to_hash
  end

  def self.load(preferences)
    new(preferences)
  end
end
