require 'rails_helper'

RSpec.describe "divespots/index", type: :view do
  before(:each) do
    assign(:divespots, [
      Divespot.create!(),
      Divespot.create!()
    ])
  end

  it "renders a list of divespots" do
    render
  end
end
