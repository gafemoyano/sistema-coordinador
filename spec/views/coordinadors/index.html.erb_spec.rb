require 'spec_helper'

describe "coordinadors/index" do
  before(:each) do
    assign(:coordinadors, [
      stub_model(Coordinador),
      stub_model(Coordinador)
    ])
  end

  it "renders a list of coordinadors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
