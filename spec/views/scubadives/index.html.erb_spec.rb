require 'rails_helper'

RSpec.describe "scubadives/index", type: :view do
  before(:each) do
    assign(:scubadives, [
      Scubadive.create!(
        :user => nil,
        :divespot => nil,
        :gear_set => nil,
        :enjoyment => 2,
        :comments => "MyText",
        :tip_for_others => "MyText",
        :map_tracks => "",
        :visibility => 3,
        :start_air => 4,
        :end_air => 5
      ),
      Scubadive.create!(
        :user => nil,
        :divespot => nil,
        :gear_set => nil,
        :enjoyment => 2,
        :comments => "MyText",
        :tip_for_others => "MyText",
        :map_tracks => "",
        :visibility => 3,
        :start_air => 4,
        :end_air => 5
      )
    ])
  end

  it "renders a list of scubadives" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
