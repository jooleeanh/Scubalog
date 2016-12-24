require 'rails_helper'

RSpec.describe "scubadives/show", type: :view do
  before(:each) do
    @scubadive = assign(:scubadive, Scubadive.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
