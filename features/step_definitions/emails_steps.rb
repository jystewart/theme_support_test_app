Given /^I am on the send email page$/ do
  visit "/emails"
end

Given /^I am on the send email page with the sample theme$/ do
  visit "/emails?theme=sample"
end


When /^I click "(.+?)"$/ do |button|
  click_button button
end

Then /^a mail should be sent to "(.+?)"$/ do |address|
  last_email_sent.should_not be_nil
  last_email_sent.to.should include(address)
end

And /^that email should not be MIME encoded$/ do
  last_email_sent.should_not be_mime_encoded(last_email_sent.body)
end

And /^that email should say "(.+?)"$/ do |message|
  last_email_sent.body.should match(/#{message}/)
end

And /^that email should be multipart$/ do
  last_email_sent.multipart?.should be_true
end
