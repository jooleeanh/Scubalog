require "rails_helper"

RSpec.describe GearSetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gear_sets").to route_to("gear_sets#index")
    end

    it "routes to #new" do
      expect(:get => "/gear_sets/new").to route_to("gear_sets#new")
    end

    it "routes to #show" do
      expect(:get => "/gear_sets/1").to route_to("gear_sets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gear_sets/1/edit").to route_to("gear_sets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gear_sets").to route_to("gear_sets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gear_sets/1").to route_to("gear_sets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gear_sets/1").to route_to("gear_sets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gear_sets/1").to route_to("gear_sets#destroy", :id => "1")
    end

  end
end
