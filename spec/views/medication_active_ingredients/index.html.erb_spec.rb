require 'rails_helper'

RSpec.describe "medication_active_ingredients/index", type: :view do
  before(:each) do
    assign(:medication_active_ingredients, [
      MedicationActiveIngredient.create!(
        medication: nil,
        active_ingredient: nil,
        miligrams: "Miligrams"
      ),
      MedicationActiveIngredient.create!(
        medication: nil,
        active_ingredient: nil,
        miligrams: "Miligrams"
      )
    ])
  end

  it "renders a list of medication_active_ingredients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Miligrams".to_s), count: 2
  end
end
