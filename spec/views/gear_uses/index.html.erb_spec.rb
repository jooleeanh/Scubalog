require 'rails_helper'

RSpec.describe "gear_uses/index", type: :view do
  before(:each) do
    assign(:gear_uses, [
      GearUse.create!(),
      GearUse.create!()
    ])
  end

  it "renders a list of gear_uses" do
    render
  end
end
