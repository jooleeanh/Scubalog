require 'rails_helper'

RSpec.describe "buddies/index", type: :view do
  before(:each) do
    assign(:buddies, [
      Buddy.create!(),
      Buddy.create!()
    ])
  end

  it "renders a list of buddies" do
    render
  end
end
