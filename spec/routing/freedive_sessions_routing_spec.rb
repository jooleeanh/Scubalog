require "rails_helper"

RSpec.describe FreediveSessionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/freedive_sessions").to route_to("freedive_sessions#index")
    end

    it "routes to #new" do
      expect(:get => "/freedive_sessions/new").to route_to("freedive_sessions#new")
    end

    it "routes to #show" do
      expect(:get => "/freedive_sessions/1").to route_to("freedive_sessions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/freedive_sessions/1/edit").to route_to("freedive_sessions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/freedive_sessions").to route_to("freedive_sessions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/freedive_sessions/1").to route_to("freedive_sessions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/freedive_sessions/1").to route_to("freedive_sessions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/freedive_sessions/1").to route_to("freedive_sessions#destroy", :id => "1")
    end

  end
end
