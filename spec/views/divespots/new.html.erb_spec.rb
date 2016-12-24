require 'rails_helper'

RSpec.describe "divespots/new", type: :view do
  before(:each) do
    assign(:divespot, Divespot.new())
  end

  it "renders new divespot form" do
    render

    assert_select "form[action=?][method=?]", divespots_path, "post" do
    end
  end
end
