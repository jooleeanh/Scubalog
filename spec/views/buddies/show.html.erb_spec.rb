require 'rails_helper'

RSpec.describe "buddies/show", type: :view do
  before(:each) do
    @buddy = assign(:buddy, Buddy.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
