ROUTES = [
  { method: "get_index" },
  { method: "get_show" },
  { method: "get_new" },
  { method: "get_edit" },
  { method: "post_create" },
  { method: "post_update" },
]

require 'rails_helper'
ROUTES.each do |route|
  require "support/shared_examples_for_#{route[:method]}"
end

RSpec.describe FreediveSessionController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  context "user is signed in" do
    ROUTES.each do |route|
      include_examples "test_#{route[:method]}" do
        let(:obj) { FreediveSession }
        let(:model_instance) { FactoryGirl.create(:freedive_session) }
        let(:new_model_instance) { FactoryGirl.create(:freedive_session_2) }
        end
      end
    end
  end
