require 'rails_helper'

RSpec.describe "divespots/index", type: :view do
  before(:each) do
    assign(:divespots, [
      Divespot.create!(
        :name => "Name",
        :max_depth => 2.5,
        :avg_depth => 3.5,
        :salinity => 4.5,
        :shore => false,
        :entry_difficulty => "Entry Difficulty",
        :location => "",
        :latitude => 5.5,
        :longitude => 6.5
      ),
      Divespot.create!(
        :name => "Name",
        :max_depth => 2.5,
        :avg_depth => 3.5,
        :salinity => 4.5,
        :shore => false,
        :entry_difficulty => "Entry Difficulty",
        :location => "",
        :latitude => 5.5,
        :longitude => 6.5
      )
    ])
  end

  it "renders a list of divespots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Entry Difficulty".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
  end
end
