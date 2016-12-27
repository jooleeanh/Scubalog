require 'rails_helper'

RSpec.describe "divespots/new", type: :view do
  before(:each) do
    assign(:divespot, Divespot.new(
      :name => "MyString",
      :max_depth => 1.5,
      :avg_depth => 1.5,
      :salinity => 1.5,
      :shore => false,
      :entry_difficulty => "MyString",
      :location => "",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new divespot form" do
    render

    assert_select "form[action=?][method=?]", divespots_path, "post" do

      assert_select "input#divespot_name[name=?]", "divespot[name]"

      assert_select "input#divespot_max_depth[name=?]", "divespot[max_depth]"

      assert_select "input#divespot_avg_depth[name=?]", "divespot[avg_depth]"

      assert_select "input#divespot_salinity[name=?]", "divespot[salinity]"

      assert_select "input#divespot_shore[name=?]", "divespot[shore]"

      assert_select "input#divespot_entry_difficulty[name=?]", "divespot[entry_difficulty]"

      assert_select "input#divespot_location[name=?]", "divespot[location]"

      assert_select "input#divespot_latitude[name=?]", "divespot[latitude]"

      assert_select "input#divespot_longitude[name=?]", "divespot[longitude]"
    end
  end
end
