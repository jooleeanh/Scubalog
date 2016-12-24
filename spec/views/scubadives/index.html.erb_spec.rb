require 'rails_helper'

RSpec.describe "scubadives/index", type: :view do
  before(:each) do
    assign(:scubadives, [
      Scubadive.create!(),
      Scubadive.create!()
    ])
  end

  it "renders a list of scubadives" do
    render
  end
end
