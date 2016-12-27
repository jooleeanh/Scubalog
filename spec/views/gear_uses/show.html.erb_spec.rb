require 'rails_helper'

RSpec.describe "gear_uses/show", type: :view do
  before(:each) do
    @gear_use = assign(:gear_use, GearUse.create!(
      :gear_set => nil,
      :gear => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
