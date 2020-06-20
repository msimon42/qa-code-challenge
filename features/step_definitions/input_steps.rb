Given(/^I am on the fantasy name page$/) do
  find('h2', :text => "Name Generator")
end

And(/^I see the text "(.*?)"$/) do |text|
  page.has_text?(text)
end

Given('There are 23 categories') do
  all('div', class: 'fantasy_checkbox_div', count: 23)
end

And('All categories are selected') do
  categories = all('div', class: 'fantasy_checkbox_div')
  categories.each do |category|
    category.find_field('fantasy_types[]', checked: true)
  end
end

And('I can deselect all categories') do
  categories = all('div', class: 'fantasy_checkbox_div')
  click_button('Uncheck all')
  categories.each do |category|
    category.find_field('fantasy_types[]', checked: false)
  end
end

And(/^I can select the category "(.*?)"$/) do |category|
  check('fantasy_types[]', option: category)
end

Given('There is a field where one can enter the amount of names they would like generated') do
  find_field('count')
end

And('The field is populated with the number 20') do
  find_field('count', with: '20')
end


Given('There is a dropdown menu for gender') do
  find_field('gender')
end

Given('There is a field where a user can enter a human name') do
  find_field('original_name')
end

And('The field is currently blank') do
  find_field('original_name', with: nil)
end

Given('There is a field where a user can enter a seed for the generator') do
  find_field('all_rand')
end

And('The field already contains a random number') do
  field = find_field('all_rand')
  is_number?(field.value)
end

#helper methods
def is_number?(str)
  begin
    Float(str)
  rescue
    raise 'The value of the random seed field was not a number'
  end
end
