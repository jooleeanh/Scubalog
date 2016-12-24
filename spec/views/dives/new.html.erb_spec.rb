require 'rails_helper'

RSpec.describe "dives/new", type: :view do
  before(:each) do
    assign(:dive, Dive.new())
  end

  it "renders new dive form" do
    render

    assert_select "form[action=?][method=?]", dives_path, "post" do
    end
  end
end
