require 'rails_helper'

RSpec.describe "medications/new", type: :view do
  before(:each) do
    assign(:medication, Medication.new(
      name: "MyString",
      miligrams: 1
    ))
  end

  it "renders new medication form" do
    render

    assert_select "form[action=?][method=?]", medications_path, "post" do

      assert_select "input[name=?]", "medication[name]"

      assert_select "input[name=?]", "medication[miligrams]"
    end
  end
end
