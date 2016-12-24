require 'rails_helper'

RSpec.describe "dives/index", type: :view do
  before(:each) do
    assign(:dives, [
      Dive.create!(),
      Dive.create!()
    ])
  end

  it "renders a list of dives" do
    render
  end
end
