require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(),
      Sighting.create!()
    ])
  end

  it "renders a list of sightings" do
    render
  end
end
