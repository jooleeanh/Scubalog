require 'rails_helper'

RSpec.describe "gears/new", type: :view do
  before(:each) do
    assign(:gear, Gear.new(
      :category => "MyString",
      :brand => "MyString",
      :name => "MyString",
      :size => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders new gear form" do
    render

    assert_select "form[action=?][method=?]", gears_path, "post" do

      assert_select "input#gear_category[name=?]", "gear[category]"

      assert_select "input#gear_brand[name=?]", "gear[brand]"

      assert_select "input#gear_name[name=?]", "gear[name]"

      assert_select "input#gear_size[name=?]", "gear[size]"

      assert_select "input#gear_detail[name=?]", "gear[detail]"
    end
  end
end
