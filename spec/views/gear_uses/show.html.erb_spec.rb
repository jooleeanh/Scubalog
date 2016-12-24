require 'rails_helper'

RSpec.describe "gear_uses/show", type: :view do
  before(:each) do
    @gear_use = assign(:gear_use, GearUse.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
