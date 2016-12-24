require 'rails_helper'

RSpec.describe "buddies/new", type: :view do
  before(:each) do
    assign(:buddy, Buddy.new())
  end

  it "renders new buddy form" do
    render

    assert_select "form[action=?][method=?]", buddies_path, "post" do
    end
  end
end
