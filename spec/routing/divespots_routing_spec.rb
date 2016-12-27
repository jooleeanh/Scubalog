require "rails_helper"

RSpec.describe DivespotsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/divespots").to route_to("divespots#index")
    end

    it "routes to #new" do
      expect(:get => "/divespots/new").to route_to("divespots#new")
    end

    it "routes to #show" do
      expect(:get => "/divespots/1").to route_to("divespots#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/divespots/1/edit").to route_to("divespots#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/divespots").to route_to("divespots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/divespots/1").to route_to("divespots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/divespots/1").to route_to("divespots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/divespots/1").to route_to("divespots#destroy", :id => "1")
    end

  end
end
