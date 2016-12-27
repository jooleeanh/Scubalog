require 'rails_helper'

RSpec.describe "GearSets", type: :request do
  describe "GET /gear_sets" do
    it "works! (now write some real specs)" do
      get gear_sets_path
      expect(response).to have_http_status(200)
    end
  end
end
