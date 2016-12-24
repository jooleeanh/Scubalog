require 'rails_helper'

RSpec.describe "scubadives/show", type: :view do
  before(:each) do
    @scubadive = assign(:scubadive, Scubadive.create!(
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
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
