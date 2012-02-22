require 'spec_helper'
describe "/trunks/new" do
  it "should render a form to create a trunk" do
    #assign(:trunk, stub_model(Trunk))
    @trunk = mock_model(Trunk).as_null_object
    assigns[:trunk] = @trunk
    controller.request
    #pending do
      render
      rendered.should have_selector('form',
        :method => 'post',
        :action => trunks_path
      ) do |form|
        form.should have_selector("input", type => "submit")
      end
    #end
  end
end
