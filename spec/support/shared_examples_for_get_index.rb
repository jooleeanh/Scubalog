RSpec.shared_examples "test_get_index" do
  describe "GET #index" do
    it "populates an array of model instances" do
      model_instances = FactoryGirl.create(obj.name.downcase.to_sym)
      get :index
      assigns(obj.name.downcase.pluralize.to_sym).should eq([model_instances])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end
end
