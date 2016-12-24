require 'rails_helper'

RSpec.describe "divespots/show", type: :view do
  before(:each) do
    @divespot = assign(:divespot, Divespot.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
