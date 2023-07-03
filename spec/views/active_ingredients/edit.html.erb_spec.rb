require 'rails_helper'

RSpec.describe "active_ingredients/edit", type: :view do
  let(:active_ingredient) {
    ActiveIngredient.create!(
      name: "MyString",
      common_use: "MyString"
    )
  }

  before(:each) do
    assign(:active_ingredient, active_ingredient)
  end

  it "renders the edit active_ingredient form" do
    render

    assert_select "form[action=?][method=?]", active_ingredient_path(active_ingredient), "post" do

      assert_select "input[name=?]", "active_ingredient[name]"

      assert_select "input[name=?]", "active_ingredient[common_use]"
    end
  end
end
