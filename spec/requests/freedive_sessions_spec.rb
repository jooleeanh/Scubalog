require 'rails_helper'

RSpec.describe "FreediveSessions", type: :request do
  describe "GET /freedive_sessions" do
    it "works! (now write some real specs)" do
      get freedive_sessions_path
      expect(response).to have_http_status(200)
    end
  end
end
