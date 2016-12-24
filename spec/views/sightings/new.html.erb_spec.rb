require 'rails_helper'

RSpec.describe "sightings/new", type: :view do
  before(:each) do
    assign(:sighting, Sighting.new())
  end

  it "renders new sighting form" do
    render

    assert_select "form[action=?][method=?]", sightings_path, "post" do
    end
  end
end
