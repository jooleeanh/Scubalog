require 'rails_helper'

RSpec.describe "gear_sets/show", type: :view do
  before(:each) do
    @gear_set = assign(:gear_set, GearSet.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
