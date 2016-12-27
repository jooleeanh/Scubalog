
RSpec.shared_examples "test_post_create" do
  before do
    @obj_sym = obj.name.underscore.to_sym
  end
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new model instance" do
        expect{
          post :create, (@obj_sym) => FactoryGirl.attributes_for(@obj_sym)
        }.to change(obj,:count).by(1)
      end

      it "redirects to the new model instance" do
        post :create, (@obj_sym) => FactoryGirl.attributes_for(@obj_sym)
        expect(response).to redirect_to obj.last
      end
    end

    context "with invalid attributes" do
      it "does not save the new model instance" do
        expect{
          post :create, (@obj_sym) => FactoryGirl.attributes_for(@obj_sym, :invalid)
        }.to_not change(obj,:count)
      end

      it "re-renders the new method" do
        post :create, (@obj_sym) => FactoryGirl.attributes_for(@obj_sym, :invalid)
        expect(response).to render_template :new
      end
    end
  end
end
