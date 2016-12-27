require 'rails_helper'

RSpec.describe "gear_sets/show", type: :view do
  before(:each) do
    @gear_set = assign(:gear_set, GearSet.create!(
      :user => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
