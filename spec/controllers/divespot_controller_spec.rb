require 'rails_helper'
require 'support/shared_examples_for_get_index'
require 'support/shared_examples_for_get_show'
require 'pry-byebug'

ROUTES = [
  { method: "index",
    data: Divespot,
    noun_plural: "divespots"
  },
  { method: "show",
    data: Divespot  ,
    noun_plural: "divespots"
   }
]

RSpec.describe DivespotController, type: :controller do
  context "user is not signed in" do
    ROUTES.each do |route|
      include_examples "test_get_#{route[:method]}" do
        let(:obj) { route[:data] }
      end
    end
  end
  context "user is signed in" do
    ROUTES.each do |route|
      include_examples "test_get_#{route[:method]}" do
        let(:obj) { route[:data] }
      end
    end
  end

end
