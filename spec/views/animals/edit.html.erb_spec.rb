require 'rails_helper'

RSpec.describe "animals/edit", type: :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :name => "MyString",
      :image_url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit animal form" do
    render

    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do

      assert_select "input#animal_name[name=?]", "animal[name]"

      assert_select "input#animal_image_url[name=?]", "animal[image_url]"

      assert_select "textarea#animal_description[name=?]", "animal[description]"
    end
  end
end
