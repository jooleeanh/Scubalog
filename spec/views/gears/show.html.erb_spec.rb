require 'rails_helper'

RSpec.describe "gears/show", type: :view do
  before(:each) do
    @gear = assign(:gear, Gear.create!(
      :category => "Category",
      :brand => "Brand",
      :name => "Name",
      :size => "Size",
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Detail/)
  end
end
