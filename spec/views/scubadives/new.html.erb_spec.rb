require 'rails_helper'

RSpec.describe "scubadives/new", type: :view do
  before(:each) do
    assign(:scubadive, Scubadive.new(
      :user => nil,
      :divespot => nil,
      :gear_set => nil,
      :enjoyment => 1,
      :comments => "MyText",
      :tip_for_others => "MyText",
      :map_tracks => "",
      :visibility => 1,
      :start_air => 1,
      :end_air => 1
    ))
  end

  it "renders new scubadive form" do
    render

    assert_select "form[action=?][method=?]", scubadives_path, "post" do

      assert_select "input#scubadive_user_id[name=?]", "scubadive[user_id]"

      assert_select "input#scubadive_divespot_id[name=?]", "scubadive[divespot_id]"

      assert_select "input#scubadive_gear_set_id[name=?]", "scubadive[gear_set_id]"

      assert_select "input#scubadive_enjoyment[name=?]", "scubadive[enjoyment]"

      assert_select "textarea#scubadive_comments[name=?]", "scubadive[comments]"

      assert_select "textarea#scubadive_tip_for_others[name=?]", "scubadive[tip_for_others]"

      assert_select "input#scubadive_map_tracks[name=?]", "scubadive[map_tracks]"

      assert_select "input#scubadive_visibility[name=?]", "scubadive[visibility]"

      assert_select "input#scubadive_start_air[name=?]", "scubadive[start_air]"

      assert_select "input#scubadive_end_air[name=?]", "scubadive[end_air]"
    end
  end
end
