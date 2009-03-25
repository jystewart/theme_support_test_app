When /^I request "(.+?)" with the sample theme$/ do |path|
  get "#{path}?theme=sample"
end

When /^I request "(.+?)" without a theme$/ do |path|
  get path
end

Then /^the result should have the title "(.+?)"$/ do |title|
  response.should have_tag("h1", :text => title)
end

Then /^the result should have the subtitle "(.+?)"$/ do |title|
  response.should have_tag("h2", :text => title)
end

Then /^the result should have the text "(.+?)"$/ do |copy|
  response.should have_text(/#{copy}/)
end

Then /^the result should have the tag "(.+?)"$/ do |matcher|
  response.should have_tag(matcher)
end
