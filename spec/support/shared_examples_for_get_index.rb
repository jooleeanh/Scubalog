RSpec.shared_examples "test_get_index" do
  before do
    @obj_sym = obj.name.underscore.to_sym
    @objs_sym = obj.name.underscore.pluralize.to_sym
  end
  describe "GET #index" do
    it "populates an array of model instances" do
      model_instance = FactoryGirl.create(@obj_sym)
      get :index
      expect(assigns(objs_sym)).to eq([model_instance])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end
end
