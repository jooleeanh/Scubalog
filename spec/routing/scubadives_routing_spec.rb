require "rails_helper"

RSpec.describe ScubadivesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scubadives").to route_to("scubadives#index")
    end

    it "routes to #new" do
      expect(:get => "/scubadives/new").to route_to("scubadives#new")
    end

    it "routes to #show" do
      expect(:get => "/scubadives/1").to route_to("scubadives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scubadives/1/edit").to route_to("scubadives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scubadives").to route_to("scubadives#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/scubadives/1").to route_to("scubadives#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/scubadives/1").to route_to("scubadives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scubadives/1").to route_to("scubadives#destroy", :id => "1")
    end

  end
end
