require 'rails_helper'
OmniAuth.config.test_mode = true

RSpec.describe User, type: :model do
  context "statistics" do
    context "time" do
      describe "#time_underwater_scubadiving" do
        it "returns total time spent underwater in seconds while scubadiving"
      end
      describe "#time_underwater_freediving" do
        it "returns total time spent underwater in seconds while freediving"
      end
      describe "#time_underwater_diving" do
        it "returns total time spent underwater in seconds while (scuba|free)diving"
      end
      describe "#dive_count_per_year_scubadiving" do
        it "returns a hash of number of scubadives per year (sort desc)"
      end
      describe "#dive_count_per_year_freediving" do
        it "returns a hash of number of freedives per year (sort desc)"
      end
      describe "#dive_count_per_year_diving" do
        it "returns a hash of number of (scuba|free)dives per year (sort desc)"
      end
    end
    context "location" do
      describe "#top_divespots_scubadiving" do
        it "returns a hash of divespots done while scubadiving sorted by count (descending)"
      end
      describe "#top_divespots_freediving" do
        it "returns a hash of divespots done while freediving sorted by count (descending)"
      end
      describe "#top_divespots_diving" do
        it "returns a hash of divespots done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_cities_scubadiving" do
        it "returns a hash of cities done while scubadiving sorted by count (descending)"
      end
      describe "#top_cities_freediving" do
        it "returns a hash of cities done while freediving sorted by count (descending)"
      end
      describe "#top_cities_diving" do
        it "returns a hash of cities done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_states_scubadiving" do
        it "returns a hash of states done while scubadiving sorted by count (descending)"
      end
      describe "#top_states_freediving" do
        it "returns a hash of states done while freediving sorted by count (descending)"
      end
      describe "#top_states_diving" do
        it "returns a hash of states done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_regions_scubadiving" do
        it "returns a hash of regions done while scubadiving sorted by count (descending)"
      end
      describe "#top_regions_freediving" do
        it "returns a hash of regions done while freediving sorted by count (descending)"
      end
      describe "#top_regions_diving" do
        it "returns a hash of regions done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_countries_scubadiving" do
        it "returns a hash of countries done while scubadiving sorted by count (descending)"
      end
      describe "#top_countries_freediving" do
        it "returns a hash of countries done while freediving sorted by count (descending)"
      end
      describe "#top_countries_diving" do
        it "returns a hash of countries done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_continents_scubadiving" do
        it "returns a hash of continents done while scubadiving sorted by count (descending)"
      end
      describe "#top_continents_freediving" do
        it "returns a hash of continents done while freediving sorted by count (descending)"
      end
      describe "#top_continents_diving" do
        it "returns a hash of continents done while (scuba|free)diving sorted by count (descending)"
      end
    end
    context "records" do
      describe "#deepest_dive_scubadiving" do
        it "returns the deepest scubadive"
      end
      describe "#deepest_dive_freediving" do
        it "returns the deepest freedive"
      end
      describe "#longest_dive_scubadiving" do
        it "returns the longest scubadive"
      end
      describe "#longest_dive_freediving" do
        it "returns the longest freedive"
      end
      describe "#most_dives_in_a_day_scubadiving" do
        it "returns the highest number of scubadives done in a day"
      end
      describe "#most_dives_in_a_day_freediving" do
        it "returns the highest number of freedives done in a day"
      end
    end
    context "other" do
      describe "#top_dive_types_scubadiving" do
        it "returns a hash of dive types done while scubadiving sorted by count (descending)"
      end
      describe "#top_dive_types_freediving" do
        it "returns a hash of dive types done while freediving sorted by count (descending)"
      end
      describe "#top_dive_types_diving" do
        it "returns a hash of dive types done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_buddies_scubadiving" do
        it "returns a hash of buddies done while scubadiving sorted by count (descending)"
      end
      describe "#top_buddies_freediving" do
        it "returns a hash of buddies done while freediving sorted by count (descending)"
      end
      describe "#top_buddies_diving" do
        it "returns a hash of buddies done while (scuba|free)diving sorted by count (descending)"
      end
      describe "#top_sightings_scubadiving" do
        it "returns a hash of sightings done while scubadiving sorted by count (descending)"
      end
      describe "#top_sightings_freediving" do
        it "returns a hash of sightings done while freediving sorted by count (descending)"
      end
      describe "#top_sightings_diving" do
        it "returns a hash of sightings done while (scuba|free)diving sorted by count (descending)"
      end
    end
  end
end
