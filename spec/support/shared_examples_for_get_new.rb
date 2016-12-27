RSpec.shared_examples "test_get_new" do
  describe "GET #new" do
    it "assigns given fields to the new model instance" do
      get :new
      # assigns(:contact).phones.map{ |p| p.phone_type }.should eq %w(home office mobile)
    end
  end
end
