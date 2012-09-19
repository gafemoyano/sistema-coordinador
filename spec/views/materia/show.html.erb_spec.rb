require 'spec_helper'

describe "materia/show" do
  before(:each) do
    @materium = assign(:materium, stub_model(Materium))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
