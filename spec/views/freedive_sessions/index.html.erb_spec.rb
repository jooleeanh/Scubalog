require 'rails_helper'

RSpec.describe "freedive_sessions/index", type: :view do
  before(:each) do
    assign(:freedive_sessions, [
      FreediveSession.create!(),
      FreediveSession.create!()
    ])
  end

  it "renders a list of freedive_sessions" do
    render
  end
end
