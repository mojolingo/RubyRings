require 'spec_helper'
describe "trunks/index.html" do
  before do
    @trunks = [ Factory(:trunk), Factory(:trunk) ]
    assigns[:trunks] = @trunks
    render
  end
  it "should contain two trunk records" do
    rendered.should have_selector("tr.trunk", :count => 2)
  end
  describe "trunk records" do
    it "should have a link to show" do
      rendered.should have_selector("tr.trunk:last-child a") do |link|
        link.should have_content("Show")
      end
    end
    it "should have a link to edit" do
      rendered.should have_selector("tr.trunk:last-child a") do |link|
        link.should have_content("Edit")
      end
    end
    it "should have a link to delete" do
      rendered.should have_selector("tr.trunk:last-child a") do |link|
        link.should have_content("Delete")
      end
    end
  end
end
