require 'rails_helper'

RSpec.describe "active_ingredients/index", type: :view do
  before(:each) do
    assign(:active_ingredients, [
      ActiveIngredient.create!(
        name: "Name",
        common_use: "Common Use"
      ),
      ActiveIngredient.create!(
        name: "Name",
        common_use: "Common Use"
      )
    ])
  end

  it "renders a list of active_ingredients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Common Use".to_s), count: 2
  end
end
