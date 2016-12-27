require 'rails_helper'

RSpec.describe "gears/index", type: :view do
  before(:each) do
    assign(:gears, [
      Gear.create!(
        :category => "Category",
        :brand => "Brand",
        :name => "Name",
        :size => "Size",
        :detail => "Detail"
      ),
      Gear.create!(
        :category => "Category",
        :brand => "Brand",
        :name => "Name",
        :size => "Size",
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of gears" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
