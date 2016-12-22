RSpec.shared_examples "test_get_show" do
  describe "GET #show" do
    it "assigns the requested contact to @contact" do
      contact = Factory(:contact)
      get :show, id: contact
      assigns(:contact).should eq(contact)
    end

    it "renders the #show view" do
      get :show, id: Factory(:contact)
      response.should render_template :show
    end
  end
end
