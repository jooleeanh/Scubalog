require 'rails_helper'

RSpec.describe "gear_uses/new", type: :view do
  before(:each) do
    assign(:gear_use, GearUse.new())
  end

  it "renders new gear_use form" do
    render

    assert_select "form[action=?][method=?]", gear_uses_path, "post" do
    end
  end
end
