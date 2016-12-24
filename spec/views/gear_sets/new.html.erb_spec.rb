require 'rails_helper'

RSpec.describe "gear_sets/new", type: :view do
  before(:each) do
    assign(:gear_set, GearSet.new())
  end

  it "renders new gear_set form" do
    render

    assert_select "form[action=?][method=?]", gear_sets_path, "post" do
    end
  end
end
