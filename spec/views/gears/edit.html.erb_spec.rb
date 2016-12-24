require 'rails_helper'

RSpec.describe "gears/edit", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!(
      :category => "MyString",
      :brand => "MyString",
      :name => "MyString",
      :size => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders the edit gear form" do
    render

    assert_select "form[action=?][method=?]", gear_path(@gear), "post" do

      assert_select "input#gear_category[name=?]", "gear[category]"

      assert_select "input#gear_brand[name=?]", "gear[brand]"

      assert_select "input#gear_name[name=?]", "gear[name]"

      assert_select "input#gear_size[name=?]", "gear[size]"

      assert_select "input#gear_detail[name=?]", "gear[detail]"
    end
  end
end
