require "rails_helper"

RSpec.describe GearUsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gear_uses").to route_to("gear_uses#index")
    end

    it "routes to #new" do
      expect(:get => "/gear_uses/new").to route_to("gear_uses#new")
    end

    it "routes to #show" do
      expect(:get => "/gear_uses/1").to route_to("gear_uses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gear_uses/1/edit").to route_to("gear_uses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gear_uses").to route_to("gear_uses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gear_uses/1").to route_to("gear_uses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gear_uses/1").to route_to("gear_uses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gear_uses/1").to route_to("gear_uses#destroy", :id => "1")
    end

  end
end
