require 'rails_helper'

RSpec.describe "dives/edit", type: :view do
  before(:each) do
    @dive = assign(:dive, Dive.create!(
      :dive_types => "MyString",
      :computer => false,
      :max_depth => 1.5,
      :avg_depth => 1.5,
      :min_temp => 1,
      :max_temp => 1,
      :sample_interval => 1,
      :data_points => ""
    ))
  end

  it "renders the edit dive form" do
    render

    assert_select "form[action=?][method=?]", dive_path(@dive), "post" do

      assert_select "input#dive_dive_types[name=?]", "dive[dive_types]"

      assert_select "input#dive_computer[name=?]", "dive[computer]"

      assert_select "input#dive_max_depth[name=?]", "dive[max_depth]"

      assert_select "input#dive_avg_depth[name=?]", "dive[avg_depth]"

      assert_select "input#dive_min_temp[name=?]", "dive[min_temp]"

      assert_select "input#dive_max_temp[name=?]", "dive[max_temp]"

      assert_select "input#dive_sample_interval[name=?]", "dive[sample_interval]"

      assert_select "input#dive_data_points[name=?]", "dive[data_points]"
    end
  end
end
