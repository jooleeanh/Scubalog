require 'rails_helper'

RSpec.describe "gear_uses/edit", type: :view do
  before(:each) do
    @gear_use = assign(:gear_use, GearUse.create!())
  end

  it "renders the edit gear_use form" do
    render

    assert_select "form[action=?][method=?]", gear_use_path(@gear_use), "post" do
    end
  end
end
