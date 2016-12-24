require 'rails_helper'

RSpec.describe "gear_sets/index", type: :view do
  before(:each) do
    assign(:gear_sets, [
      GearSet.create!(),
      GearSet.create!()
    ])
  end

  it "renders a list of gear_sets" do
    render
  end
end
