RSpec.shared_examples "test_get_new" do
  describe "GET #new" do
    it "assigns a home, office, and mobile phone to the new contact" do
      get :new
      assigns(:contact).phones.map{ |p| p.phone_type }.should eq %w(home office mobile)
    end
  end
end
