require 'rails_helper'

RSpec.describe "medication_active_ingredients/show", type: :view do
  before(:each) do
    assign(:medication_active_ingredient, MedicationActiveIngredient.create!(
      medication: nil,
      active_ingredient: nil,
      miligrams: "Miligrams"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Miligrams/)
  end
end
