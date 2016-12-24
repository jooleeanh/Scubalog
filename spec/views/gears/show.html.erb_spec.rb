require 'rails_helper'

RSpec.describe "gears/show", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
