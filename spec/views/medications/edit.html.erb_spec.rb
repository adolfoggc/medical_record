require 'rails_helper'

RSpec.describe "medications/edit", type: :view do
  let(:medication) {
    Medication.create!(
      name: "MyString",
      miligrams: 1
    )
  }

  before(:each) do
    assign(:medication, medication)
  end

  it "renders the edit medication form" do
    render

    assert_select "form[action=?][method=?]", medication_path(medication), "post" do

      assert_select "input[name=?]", "medication[name]"

      assert_select "input[name=?]", "medication[miligrams]"
    end
  end
end
