require 'rails_helper'

RSpec.describe "sightings/show", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
