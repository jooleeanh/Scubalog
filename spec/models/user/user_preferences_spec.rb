require 'rails_helper'
OmniAuth.config.test_mode = true

RSpec.describe User, type: :model do
  context "preferences" do
    it "values match the given data type"
    it "newsletter is set to 'false' by default"
  end
end
