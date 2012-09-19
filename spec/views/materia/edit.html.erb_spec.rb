require 'spec_helper'

describe "materia/edit" do
  before(:each) do
    @materium = assign(:materium, stub_model(Materium))
  end

  it "renders the edit materium form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => materia_path(@materium), :method => "post" do
    end
  end
end
