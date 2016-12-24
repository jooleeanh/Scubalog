require 'rails_helper'

RSpec.describe "freedive_sessions/new", type: :view do
  before(:each) do
    assign(:freedive_session, FreediveSession.new())
  end

  it "renders new freedive_session form" do
    render

    assert_select "form[action=?][method=?]", freedive_sessions_path, "post" do
    end
  end
end
