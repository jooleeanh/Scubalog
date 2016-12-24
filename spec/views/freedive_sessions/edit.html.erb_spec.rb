require 'rails_helper'

RSpec.describe "freedive_sessions/edit", type: :view do
  before(:each) do
    @freedive_session = assign(:freedive_session, FreediveSession.create!())
  end

  it "renders the edit freedive_session form" do
    render

    assert_select "form[action=?][method=?]", freedive_session_path(@freedive_session), "post" do
    end
  end
end
