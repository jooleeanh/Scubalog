require "rails_helper"

RSpec.describe BuddiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/buddies").to route_to("buddies#index")
    end

    it "routes to #new" do
      expect(:get => "/buddies/new").to route_to("buddies#new")
    end

    it "routes to #show" do
      expect(:get => "/buddies/1").to route_to("buddies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/buddies/1/edit").to route_to("buddies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/buddies").to route_to("buddies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/buddies/1").to route_to("buddies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/buddies/1").to route_to("buddies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/buddies/1").to route_to("buddies#destroy", :id => "1")
    end

  end
end
