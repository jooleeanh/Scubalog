require 'rails_helper'

RSpec.describe "freedive_sessions/show", type: :view do
  before(:each) do
    @freedive_session = assign(:freedive_session, FreediveSession.create!(
      :user => nil,
      :divespot => nil,
      :gear_set => nil,
      :enjoyment => 2,
      :comments => "MyText",
      :tip_for_others => "MyText",
      :map_tracks => "",
      :visibility => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3/)
  end
end
