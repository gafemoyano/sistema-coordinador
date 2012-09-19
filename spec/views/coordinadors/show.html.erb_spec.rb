require 'spec_helper'

describe "coordinadors/show" do
  before(:each) do
    @coordinador = assign(:coordinador, stub_model(Coordinador))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
