require 'rails_helper'

RSpec.describe "buddies/new", type: :view do
  before(:each) do
    assign(:buddy, Buddy.new(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders new buddy form" do
    render

    assert_select "form[action=?][method=?]", buddies_path, "post" do

      assert_select "input#buddy_user_id[name=?]", "buddy[user_id]"

      assert_select "input#buddy_name[name=?]", "buddy[name]"
    end
  end
end
