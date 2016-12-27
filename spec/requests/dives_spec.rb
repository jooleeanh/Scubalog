require 'rails_helper'

RSpec.describe "dives", type: :request do
  describe "GET /dives" do
    it "works! (now write some real specs)" do
      get dives_path
      expect(response).to have_http_status(200)
    end
  end
end
