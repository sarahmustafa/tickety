Given /^i am on the 'new user' page$/ do
  visit new_user_path
end

When /^i enter "(.*?)" for "(.*?)"$/ do |value, field|
  fill_in field, :with => value
end

When /^i click button "(.*?)"$/ do |arg1|
  click_button arg1  
end

Then /^i should see "(.*?)"$/ do |something|
  page.should have_content something
end
