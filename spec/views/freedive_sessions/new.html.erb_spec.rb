require 'rails_helper'

RSpec.describe "freedive_sessions/new", type: :view do
  before(:each) do
    assign(:freedive_session, FreediveSession.new(
      :user => nil,
      :divespot => nil,
      :gear_set => nil,
      :enjoyment => 1,
      :comments => "MyText",
      :tip_for_others => "MyText",
      :map_tracks => "",
      :visibility => 1
    ))
  end

  it "renders new freedive_session form" do
    render

    assert_select "form[action=?][method=?]", freedive_sessions_path, "post" do

      assert_select "input#freedive_session_user_id[name=?]", "freedive_session[user_id]"

      assert_select "input#freedive_session_divespot_id[name=?]", "freedive_session[divespot_id]"

      assert_select "input#freedive_session_gear_set_id[name=?]", "freedive_session[gear_set_id]"

      assert_select "input#freedive_session_enjoyment[name=?]", "freedive_session[enjoyment]"

      assert_select "textarea#freedive_session_comments[name=?]", "freedive_session[comments]"

      assert_select "textarea#freedive_session_tip_for_others[name=?]", "freedive_session[tip_for_others]"

      assert_select "input#freedive_session_map_tracks[name=?]", "freedive_session[map_tracks]"

      assert_select "input#freedive_session_visibility[name=?]", "freedive_session[visibility]"
    end
  end
end
