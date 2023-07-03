require 'rails_helper'

RSpec.describe "active_ingredients/show", type: :view do
  before(:each) do
    assign(:active_ingredient, ActiveIngredient.create!(
      name: "Name",
      common_use: "Common Use"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Common Use/)
  end
end
