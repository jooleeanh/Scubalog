require 'rails_helper'
OmniAuth.config.test_mode = true

MODELS = [
  {model_object: Scubadive, verb: "scubadiving", noun_singular: "scubadive", noun_plural: "scubadives" },
  {model_object: FreediveSession, verb: "freediving", noun_singular: "freedive", noun_plural: "freedives" },
  {model_object: Dive, verb: "diving", noun_singular: "dive", noun_plural: "dives" }
]

LOCATION_FIELDS = [
  {name: "divespots"},
  {name: "cities"},
  {name: "states"},
  {name: "regions"},
  {name: "countries"},
  {name: "continents"},
]

RSpec.describe User, type: :model do
  context "statistics" do
    MODELS.each do |model_hash|
      context "#{model_hash[:model_object]}" do
        context "time" do
          describe "#time_underwater_#{model_hash[:verb]}" do
            it "returns total time spent underwater in seconds while #{model_hash[:verb]}"
          end
          describe "#dive_count_per_year_#{model_hash[:verb]}" do
            it "returns a hash of number of #{model_hash[:noun_plural]} per year (sort desc)"
          end
        end
        context "location" do
          LOCATION_FIELDS.each do |field|
            describe "#top_divespots_scubadiving" do
              it "returns a hash of number of #{model_hash[:noun_plural]} per #{field[:name]} (sort desc)"
            end
          end
        end
        context "records" do
          unless model_hash[:model_object] == Dive
            describe "#deepest_dive_#{model_hash[:verb]}" do
              it "returns the deepest #{model_hash[:noun_singular]}"
            end
            describe "#longest_dive_#{model_hash[:verb]}" do
              it "returns the longest #{model_hash[:noun_singular]}"
            end
            describe "#most_dives_in_a_day_#{model_hash[:verb]}" do
              it "returns the highest number of #{model_hash[:noun_plural]} done in a day"
            end
          end
        end
        context "other" do
        describe "#top_dive_types_#{model_hash[:verb]}" do
          it "returns a hash of number of dive types done while #{model_hash[:verb]} (sort desc)"
        end
        describe "#top_buddies_#{model_hash[:verb]}" do
          it "returns a hash of number of dives with each buddy while #{model_hash[:verb]} (sort desc)"
        end
        describe "#top_sightings_#{model_hash[:verb]}" do
          it "returns a hash of number of animal sightings while #{model_hash[:verb]} (sort desc)"
        end
      end
      end
    end
  end
end
