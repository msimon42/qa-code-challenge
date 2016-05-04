Given(/^I am on the homepage$/) do
  find(".itriage_logo")
end

Then(/^I see a title with the text "(.*?)"$/) do |text|
  has_title?(/#{text}/)
end

