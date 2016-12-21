RSpec.shared_examples "test_dive" do
  # Search project for 'test_dive' to find variable that is passed to here.

  it "is valid with valid attributes"
  it "has a start_at datetime"
  it "has a end_at datetime"
  it "has an enjoyment between 1 and 5"
  it "has a positive visibility"
  it "belongs to a user"
  it "belongs to a spot"
  it "belongs to a gear set"
  it "can have many sightings"
  it "can have many buddies"
  context "map_tracks are present" do
    describe "#calculate_map_stats"
    it "calculates total distance"
    it "calculates average speed"
    it "calculates all the compass bearings"
    it "updates map_tracks with calculated data"
  end
end
