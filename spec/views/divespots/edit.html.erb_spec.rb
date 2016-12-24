require 'rails_helper'

RSpec.describe "divespots/edit", type: :view do
  before(:each) do
    @divespot = assign(:divespot, Divespot.create!())
  end

  it "renders the edit divespot form" do
    render

    assert_select "form[action=?][method=?]", divespot_path(@divespot), "post" do
    end
  end
end
