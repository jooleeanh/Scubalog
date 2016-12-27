require 'rails_helper'

RSpec.describe "GearUses", type: :request do
  describe "GET /gear_uses" do
    it "works! (now write some real specs)" do
      get gear_uses_path
      expect(response).to have_http_status(200)
    end
  end
end
