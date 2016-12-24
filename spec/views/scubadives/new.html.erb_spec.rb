require 'rails_helper'

RSpec.describe "scubadives/new", type: :view do
  before(:each) do
    assign(:scubadive, Scubadive.new())
  end

  it "renders new scubadive form" do
    render

    assert_select "form[action=?][method=?]", scubadives_path, "post" do
    end
  end
end
