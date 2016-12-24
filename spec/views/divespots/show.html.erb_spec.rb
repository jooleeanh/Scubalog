require 'rails_helper'

RSpec.describe "divespots/show", type: :view do
  before(:each) do
    @divespot = assign(:divespot, Divespot.create!(
      :name => "Name",
      :max_depth => 2.5,
      :avg_depth => 3.5,
      :salinity => 4.5,
      :shore => false,
      :entry_difficulty => "Entry Difficulty",
      :location => "",
      :latitude => 5.5,
      :longitude => 6.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Entry Difficulty/)
    expect(rendered).to match(//)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
  end
end
