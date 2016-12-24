require 'rails_helper'

RSpec.describe "scubadives/edit", type: :view do
  before(:each) do
    @scubadive = assign(:scubadive, Scubadive.create!())
  end

  it "renders the edit scubadive form" do
    render

    assert_select "form[action=?][method=?]", scubadive_path(@scubadive), "post" do
    end
  end
end
