require 'rails_helper'

RSpec.describe "medication_active_ingredients/edit", type: :view do
  let(:medication_active_ingredient) {
    MedicationActiveIngredient.create!(
      medication: nil,
      active_ingredient: nil,
      miligrams: "MyString"
    )
  }

  before(:each) do
    assign(:medication_active_ingredient, medication_active_ingredient)
  end

  it "renders the edit medication_active_ingredient form" do
    render

    assert_select "form[action=?][method=?]", medication_active_ingredient_path(medication_active_ingredient), "post" do

      assert_select "input[name=?]", "medication_active_ingredient[medication_id]"

      assert_select "input[name=?]", "medication_active_ingredient[active_ingredient_id]"

      assert_select "input[name=?]", "medication_active_ingredient[miligrams]"
    end
  end
end
