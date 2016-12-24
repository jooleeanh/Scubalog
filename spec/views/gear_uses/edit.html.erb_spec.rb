require 'rails_helper'

RSpec.describe "gear_uses/edit", type: :view do
  before(:each) do
    @gear_use = assign(:gear_use, GearUse.create!(
      :gear_set => nil,
      :gear => nil
    ))
  end

  it "renders the edit gear_use form" do
    render

    assert_select "form[action=?][method=?]", gear_use_path(@gear_use), "post" do

      assert_select "input#gear_use_gear_set_id[name=?]", "gear_use[gear_set_id]"

      assert_select "input#gear_use_gear_id[name=?]", "gear_use[gear_id]"
    end
  end
end
