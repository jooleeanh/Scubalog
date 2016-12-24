require 'rails_helper'

RSpec.describe "buddies/edit", type: :view do
  before(:each) do
    @buddy = assign(:buddy, Buddy.create!())
  end

  it "renders the edit buddy form" do
    render

    assert_select "form[action=?][method=?]", buddy_path(@buddy), "post" do
    end
  end
end
