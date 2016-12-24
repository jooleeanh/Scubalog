require 'rails_helper'

RSpec.describe "sightings/show", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!(
      :animal => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
