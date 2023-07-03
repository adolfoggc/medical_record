require 'rails_helper'

RSpec.describe "active_ingredients/new", type: :view do
  before(:each) do
    assign(:active_ingredient, ActiveIngredient.new(
      name: "MyString",
      common_use: "MyString"
    ))
  end

  it "renders new active_ingredient form" do
    render

    assert_select "form[action=?][method=?]", active_ingredients_path, "post" do

      assert_select "input[name=?]", "active_ingredient[name]"

      assert_select "input[name=?]", "active_ingredient[common_use]"
    end
  end
end
