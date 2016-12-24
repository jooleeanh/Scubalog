require 'rails_helper'

RSpec.describe "dives/index", type: :view do
  before(:each) do
    assign(:dives, [
      Dive.create!(
        :dive_types => "Dive Types",
        :computer => false,
        :max_depth => 2.5,
        :avg_depth => 3.5,
        :min_temp => 4,
        :max_temp => 5,
        :sample_interval => 6,
        :data_points => ""
      ),
      Dive.create!(
        :dive_types => "Dive Types",
        :computer => false,
        :max_depth => 2.5,
        :avg_depth => 3.5,
        :min_temp => 4,
        :max_temp => 5,
        :sample_interval => 6,
        :data_points => ""
      )
    ])
  end

  it "renders a list of dives" do
    render
    assert_select "tr>td", :text => "Dive Types".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
