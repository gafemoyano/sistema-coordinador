require 'spec_helper'

describe "materia/index" do
  before(:each) do
    assign(:materia, [
      stub_model(Materium),
      stub_model(Materium)
    ])
  end

  it "renders a list of materia" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
