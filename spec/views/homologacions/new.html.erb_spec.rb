require 'spec_helper'

describe "homologacions/new" do
  before(:each) do
    assign(:homologacion, stub_model(Homologacion,
      :razon => "MyText",
      :estudiante => nil,
      :materia => nil
    ).as_new_record)
  end

  it "renders new homologacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => homologacions_path, :method => "post" do
      assert_select "textarea#homologacion_razon", :name => "homologacion[razon]"
      assert_select "input#homologacion_estudiante", :name => "homologacion[estudiante]"
      assert_select "input#homologacion_materia", :name => "homologacion[materia]"
    end
  end
end
