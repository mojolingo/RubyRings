require 'spec_helper'
describe "/trunks/new" do
  it "should render a form to create a trunk" do
    @trunk = mock_model(Trunk).as_new_record.as_null_object
    assigns[:trunk] = @trunk
    render
    rendered.should have_selector('form',
      :method => 'post',
      :action => trunks_path
    ) do |form|
      form.should have_selector("input", :type => 'submit')
    #  form.should have_selector("input", :name => 'commit', :type => 'submit', :value => 'Create Trunk')
    end
  end
end
