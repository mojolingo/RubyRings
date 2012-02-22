When /^I create a SIP trunk named  "([^"]*)"$/ do |trunk_name|
  visit new_trunk_path
  fill_in "Name", :with => trunk_name
  click_button  "Create"
end

Then /^I should see 'New SIP Trunk \("([^"]*)"\) created'$/ do |trunk_name|
  response.should contain(trunk_name)
end
