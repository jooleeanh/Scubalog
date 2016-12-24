require 'rails_helper'

RSpec.describe "buddies/show", type: :view do
  before(:each) do
    @buddy = assign(:buddy, Buddy.create!(
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
