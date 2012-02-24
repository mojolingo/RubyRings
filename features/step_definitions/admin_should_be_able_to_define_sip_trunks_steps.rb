Given /^the following trunk records/ do |table|
  table.hashes.each do |hash|
    Factory(:trunk, hash)
  end
end

When /^I create a SIP trunk named  "([^"]*)"$/ do |trunk_name|
  visit new_trunk_path
  fill_in "Trunk Name", :with => trunk_name
  click_button  "Create"
end

Then /^I should see 'Succesfully created new SIP Trunk \("([^"]*)"\)'$/ do |trunk_name|
  page.should have_content(trunk_name)
end


Then /^I should see (\d+) trunks$/ do |arg1|
  page.should have_selector("tr.trunk", :count => 3)
end
