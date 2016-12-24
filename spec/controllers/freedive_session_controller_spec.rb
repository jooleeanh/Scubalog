require 'rails_helper'
require 'support/shared_examples_for_get_index'
require 'support/shared_examples_for_get_show'
require 'support/shared_examples_for_get_new'
require 'support/shared_examples_for_get_edit'
require 'support/shared_examples_for_post_create'
require 'support/shared_examples_for_post_update'

ROUTES = [
  { method: "get_index",
    data: FreediveSession,
    noun_plural: "freedive sessions"
  },
  { method: "get_show",
    data: FreediveSession  ,
    noun_plural: "freedive sessions"
  },
  { method: "get_new",
    data: FreediveSession,
    noun_plural: "freedive sessions"
  },
  { method: "get_edit",
    data: FreediveSession,
    noun_plural: "freedive sessions"
  },
  { method: "post_create",
    data: FreediveSession,
    noun_plural: "freedive sessions"
  },
  { method: "post_update",
    data: FreediveSession,
    noun_plural: "freedive sessions"
  },
]

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
        let(:obj) { route[:data] }
        let(:model_instance) { FactoryGirl.create(:freedive_session) }
        let(:new_model_instance) { FactoryGirl.create(:freedive_session_2) }
        end
      end
    end
  end
