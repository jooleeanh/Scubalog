require 'rails_helper'

RSpec.describe "freedive_sessions/show", type: :view do
  before(:each) do
    @freedive_session = assign(:freedive_session, FreediveSession.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
