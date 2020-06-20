Given(/^I am on the fantasy name page$/) do
  find('h2', :text => "Name Generator")
end

And(/^I see the text "(.*?)"$/) do |text|
  page.has_text?(text)
end

Then('There are 23 categories and all are selected') do
  @categories = all('div', class: 'fantasy_checkbox_div', count: 23)
  @categories.each do |category|
    category.find_field('fantasy_types[]', checked: true)
  end
end

And('I can deselect all categories') do
  click_button('Uncheck all')
  @categories.each do |category|
    category.find_field('fantasy_types[]', checked: false)
  end
end

And(/^I can select the category "(.*?)"$/) do |category|
  check('fantasy_types[]', option: category)
end

Then('I can generate names for the selected category') do
  click_button('Write me some fantasy names')
  find('h1', text: 'Random Fantasy Names')
  find('h2', text: 'Best Suggestions')
end
