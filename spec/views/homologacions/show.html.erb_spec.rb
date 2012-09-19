require 'spec_helper'

describe "homologacions/show" do
  before(:each) do
    @homologacion = assign(:homologacion, stub_model(Homologacion,
      :razon => "MyText",
      :estudiante => nil,
      :materia => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
