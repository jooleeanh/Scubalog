require 'rails_helper'

RSpec.describe "Buddies", type: :request do
  describe "GET /buddies" do
    it "works! (now write some real specs)" do
      get buddies_path
      expect(response).to have_http_status(200)
    end
  end
end
