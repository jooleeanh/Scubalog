require 'rails_helper'

RSpec.describe "gear_uses/index", type: :view do
  before(:each) do
    assign(:gear_uses, [
      GearUse.create!(
        :gear_set => nil,
        :gear => nil
      ),
      GearUse.create!(
        :gear_set => nil,
        :gear => nil
      )
    ])
  end

  it "renders a list of gear_uses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
