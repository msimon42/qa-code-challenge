Given(/^I am on the homepage$/) do
  find(:class, '.logo')
end

Then(/^I see the text "(.*?)"$/) do |text|
  has_text?(/#{text}/)
end

