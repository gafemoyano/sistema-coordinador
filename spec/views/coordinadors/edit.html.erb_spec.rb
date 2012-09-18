require 'spec_helper'

describe "coordinadors/edit" do
  before(:each) do
    @coordinador = assign(:coordinador, stub_model(Coordinador))
  end

  it "renders the edit coordinador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coordinadors_path(@coordinador), :method => "post" do
    end
  end
end
