require 'rails_helper'

RSpec.describe "gear_sets/edit", type: :view do
  before(:each) do
    @gear_set = assign(:gear_set, GearSet.create!(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit gear_set form" do
    render

    assert_select "form[action=?][method=?]", gear_set_path(@gear_set), "post" do

      assert_select "input#gear_set_user_id[name=?]", "gear_set[user_id]"

      assert_select "input#gear_set_name[name=?]", "gear_set[name]"
    end
  end
end
