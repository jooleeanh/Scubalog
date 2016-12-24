require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(
        :animal => nil
      ),
      Sighting.create!(
        :animal => nil
      )
    ])
  end

  it "renders a list of sightings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
