When /^I create a SIP trunk named  "([^"]*)"$/ do |trunk_name|
  visit new_trunk_path
  fill_in "Trunk Name", :with => trunk_name
  click_button  "Create"
end

Then /^I should see 'Succesfully created new SIP Trunk \("([^"]*)"\)'$/ do |trunk_name|
  page.should have_content(trunk_name)
end
