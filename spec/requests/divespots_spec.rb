require 'rails_helper'

RSpec.describe "Divespots", type: :request do
  describe "GET /divespots" do
    it "works! (now write some real specs)" do
      get divespots_path
      expect(response).to have_http_status(200)
    end
  end
end
