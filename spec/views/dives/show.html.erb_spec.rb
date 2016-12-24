require 'rails_helper'

RSpec.describe "dives/show", type: :view do
  before(:each) do
    @dive = assign(:dive, Dive.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
