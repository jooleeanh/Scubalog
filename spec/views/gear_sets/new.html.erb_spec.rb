require 'rails_helper'

RSpec.describe "gear_sets/new", type: :view do
  before(:each) do
    assign(:gear_set, GearSet.new(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders new gear_set form" do
    render

    assert_select "form[action=?][method=?]", gear_sets_path, "post" do

      assert_select "input#gear_set_user_id[name=?]", "gear_set[user_id]"

      assert_select "input#gear_set_name[name=?]", "gear_set[name]"
    end
  end
end
