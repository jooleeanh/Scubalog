require 'rails_helper'

RSpec.describe "buddies/edit", type: :view do
  before(:each) do
    @buddy = assign(:buddy, Buddy.create!(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit buddy form" do
    render

    assert_select "form[action=?][method=?]", buddy_path(@buddy), "post" do

      assert_select "input#buddy_user_id[name=?]", "buddy[user_id]"

      assert_select "input#buddy_name[name=?]", "buddy[name]"
    end
  end
end
