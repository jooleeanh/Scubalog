require 'rails_helper'

RSpec.describe "freedive_sessions/index", type: :view do
  before(:each) do
    assign(:freedive_sessions, [
      FreediveSession.create!(
        :user => nil,
        :divespot => nil,
        :gear_set => nil,
        :enjoyment => 2,
        :comments => "MyText",
        :tip_for_others => "MyText",
        :map_tracks => "",
        :visibility => 3
      ),
      FreediveSession.create!(
        :user => nil,
        :divespot => nil,
        :gear_set => nil,
        :enjoyment => 2,
        :comments => "MyText",
        :tip_for_others => "MyText",
        :map_tracks => "",
        :visibility => 3
      )
    ])
  end

  it "renders a list of freedive_sessions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
