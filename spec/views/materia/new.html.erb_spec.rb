require 'spec_helper'

describe "materia/new" do
  before(:each) do
    assign(:materium, stub_model(Materium).as_new_record)
  end

  it "renders new materium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materia_path, :method => "post" do
    end
  end
end
