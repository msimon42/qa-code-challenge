Then(/^The number of names generated is equal to "(.*?)"$/) do |number|
  all('div', class: 'name', count: number.to_i)
end

When(/^I change the number of names generated to "(.*?)"$/) do |number|
  fill_in('count', with: number)
end

Then('Returns a message saying maximum number is 100') do
  find('div', class: 'name_message', text: 'Maximum names is 100')
end

Then('Returns a message saying minimum number is 10') do
  find('div', class: 'name_message', text: 'Minimum names is 10')
end
