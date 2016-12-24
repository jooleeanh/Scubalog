RSpec.shared_examples "test_get_show" do
  before do
    @obj_sym = obj.name.underscore.to_sym
  end
  describe "GET #show" do
    it "assigns the requested model instance to @model_instance" do
      model_instance = FactoryGirl.create(@obj_sym)
      get :show, id: model_instance
      expect(assigns(@obj_sym)).to eq(model_instance)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(@obj_sym)
      expect(response).to render_template :show
    end
  end
end
