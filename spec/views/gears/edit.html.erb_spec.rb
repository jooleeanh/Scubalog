require 'rails_helper'

RSpec.describe "gears/edit", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!())
  end

  it "renders the edit gear form" do
    render

    assert_select "form[action=?][method=?]", gear_path(@gear), "post" do
    end
  end
end
