require 'rails_helper'

RSpec.describe "sightings/edit", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!())
  end

  it "renders the edit sighting form" do
    render

    assert_select "form[action=?][method=?]", sighting_path(@sighting), "post" do
    end
  end
end
