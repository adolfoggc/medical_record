require 'rails_helper'

RSpec.describe "medication_active_ingredients/new", type: :view do
  before(:each) do
    assign(:medication_active_ingredient, MedicationActiveIngredient.new(
      medication: nil,
      active_ingredient: nil,
      miligrams: "MyString"
    ))
  end

  it "renders new medication_active_ingredient form" do
    render

    assert_select "form[action=?][method=?]", medication_active_ingredients_path, "post" do

      assert_select "input[name=?]", "medication_active_ingredient[medication_id]"

      assert_select "input[name=?]", "medication_active_ingredient[active_ingredient_id]"

      assert_select "input[name=?]", "medication_active_ingredient[miligrams]"
    end
  end
end
