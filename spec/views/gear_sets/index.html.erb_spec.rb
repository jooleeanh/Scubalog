require 'rails_helper'

RSpec.describe "gear_sets/index", type: :view do
  before(:each) do
    assign(:gear_sets, [
      GearSet.create!(
        :user => nil,
        :name => "Name"
      ),
      GearSet.create!(
        :user => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of gear_sets" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
