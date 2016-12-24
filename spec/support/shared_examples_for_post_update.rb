RSpec.shared_examples "test_post_update" do
  before do
    @obj_sym = obj.name.underscore.to_sym
    @objs_sym = obj.name.underscore.pluralize.to_sym
  end
  describe 'PUT update' do
    context "with valid attributes" do
      it "locates the requested model_instance" do
        put :update, id: model_instance, @obj_sym => FactoryGirl.attributes_for(@obj_sym)
        assigns(@obj_sym).should eq(model_instance)
      end

      it "changes model_instance's attributes" do
        put :update, id: model_instance,
        @obj_sym => new_model_instance
        model_instance.reload
        model_instance.attributes == new_model_instance.attributes
      end

      it "redirects to the updated contact" do
        put :update, id: model_instance, @obj_sym => new_model_instance
        response.should redirect_to model_instance
      end
    end

    context "with invalid attributes" do
      it "locates the requested model_instance" do
        put :update, id: model_instance, @obj_sym => FactoryGirl.attributes_for(@obj_sym, :invalid)
        assigns(@obj_sym).should eq(model_instance)
      end

      it "does not change model_instance's attributes" do
        put :update, id: model_instance,
        @obj_sym => FactoryGirl.attributes_for(@obj_sym, :invalid)
        model_instance.reload
        model_instance.firstname.should_not eq("Larry")
        model_instance.lastname.should eq("Smith")
      end

      it "re-renders the edit method" do
        put :update, id: model_instance, @obj_sym => FactoryGirl.attributes_for(@obj_sym, :invalid)
        response.should render_template :edit
      end
    end
  end
end
