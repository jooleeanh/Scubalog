require 'rails_helper'

RSpec.describe "gears/index", type: :view do
  before(:each) do
    assign(:gears, [
      Gear.create!(),
      Gear.create!()
    ])
  end

  it "renders a list of gears" do
    render
  end
end
