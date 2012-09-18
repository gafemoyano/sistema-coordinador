require 'spec_helper'

describe "coordinadors/new" do
  before(:each) do
    assign(:coordinador, stub_model(Coordinador).as_new_record)
  end

  it "renders new coordinador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coordinadors_path, :method => "post" do
    end
  end
end
