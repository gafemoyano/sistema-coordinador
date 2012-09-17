require 'spec_helper'

describe "homologacions/edit" do
  before(:each) do
    @homologacion = assign(:homologacion, stub_model(Homologacion,
      :razon => "MyText",
      :estudiante => nil,
      :materia => nil
    ))
  end

  it "renders the edit homologacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => homologacions_path(@homologacion), :method => "post" do
      assert_select "textarea#homologacion_razon", :name => "homologacion[razon]"
      assert_select "input#homologacion_estudiante", :name => "homologacion[estudiante]"
      assert_select "input#homologacion_materia", :name => "homologacion[materia]"
    end
  end
end
