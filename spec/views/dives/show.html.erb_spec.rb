require 'rails_helper'

RSpec.describe "dives/show", type: :view do
  before(:each) do
    @dive = assign(:dive, Dive.create!(
      :dive_types => "Dive Types",
      :computer => false,
      :max_depth => 2.5,
      :avg_depth => 3.5,
      :min_temp => 4,
      :max_temp => 5,
      :sample_interval => 6,
      :data_points => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dive Types/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
  end
end
