require 'rails_helper'

RSpec.describe "buddies/index", type: :view do
  before(:each) do
    assign(:buddies, [
      Buddy.create!(
        :user => nil,
        :name => "Name"
      ),
      Buddy.create!(
        :user => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of buddies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
