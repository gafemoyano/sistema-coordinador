require 'spec_helper'

describe "homologacions/index" do
  before(:each) do
    assign(:homologacions, [
      stub_model(Homologacion,
        :razon => "MyText",
        :estudiante => nil,
        :materia => nil
      ),
      stub_model(Homologacion,
        :razon => "MyText",
        :estudiante => nil,
        :materia => nil
      )
    ])
  end

  it "renders a list of homologacions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
