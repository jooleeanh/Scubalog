require 'rails_helper'

RSpec.describe "dives/edit", type: :view do
  before(:each) do
    @dive = assign(:dive, Dive.create!())
  end

  it "renders the edit dive form" do
    render

    assert_select "form[action=?][method=?]", dive_path(@dive), "post" do
    end
  end
end
