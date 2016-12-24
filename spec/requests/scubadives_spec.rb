require 'rails_helper'

RSpec.describe "Scubadives", type: :request do
  describe "GET /scubadives" do
    it "works! (now write some real specs)" do
      get scubadives_path
      expect(response).to have_http_status(200)
    end
  end
end
