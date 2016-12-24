require 'rails_helper'

RSpec.describe "gear_uses/new", type: :view do
  before(:each) do
    assign(:gear_use, GearUse.new(
      :gear_set => nil,
      :gear => nil
    ))
  end

  it "renders new gear_use form" do
    render

    assert_select "form[action=?][method=?]", gear_uses_path, "post" do

      assert_select "input#gear_use_gear_set_id[name=?]", "gear_use[gear_set_id]"

      assert_select "input#gear_use_gear_id[name=?]", "gear_use[gear_id]"
    end
  end
end
