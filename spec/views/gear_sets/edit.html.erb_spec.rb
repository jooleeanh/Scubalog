require 'rails_helper'

RSpec.describe "gear_sets/edit", type: :view do
  before(:each) do
    @gear_set = assign(:gear_set, GearSet.create!())
  end

  it "renders the edit gear_set form" do
    render

    assert_select "form[action=?][method=?]", gear_set_path(@gear_set), "post" do
    end
  end
end
