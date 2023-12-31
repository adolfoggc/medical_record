require 'rails_helper'

RSpec.describe "medications/show", type: :view do
  before(:each) do
    assign(:medication, Medication.create!(
      name: "Name",
      miligrams: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
