require "rails_helper"

RSpec.describe DivesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dives").to route_to("dives#index")
    end

    it "routes to #new" do
      expect(:get => "/dives/new").to route_to("dives#new")
    end

    it "routes to #show" do
      expect(:get => "/dives/1").to route_to("dives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dives/1/edit").to route_to("dives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dives").to route_to("dives#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dives/1").to route_to("dives#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dives/1").to route_to("dives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dives/1").to route_to("dives#destroy", :id => "1")
    end

  end
end
