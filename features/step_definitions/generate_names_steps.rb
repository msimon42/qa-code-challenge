And('I deselect all categories') do
  click_button('Uncheck all')
end

When('I select a single category') do
  check('fantasy_types[]', option: 'Alien')
end

And('I submit the form') do
  click_button('Write me some fantasy names')
end

Then(/^I am now on a results page that is "(.*?)"$/) do |expectation|
  find('h1', text: 'Random Fantasy Names')
  case expectation
  when 'not empty'
    assert_name_element
  when 'empty'
    assert_no_name_element
  else
    raise 'Invalid argument'  
  end
end

And(/^These results are "(.*?)"$/) do |categories|
  results = all('div', class: 'name')
  required_cats = categories.split(',')

  results.each do |result|
    assert_correct_category(result.text, required_cats)
  end
end

When('I select multiple categories') do
  check('fantasy_types[]', option: 'Alien')
  check('fantasy_types[]', option: 'Dragon')
end

Then('I am now on a page with no results') do
  find('h1', text: 'Random Fantasy Names')
end

When('I select all categories') do
  click_button('Check all')
end

#helper methods
def assert_name_element
  unless has_css?('.name')
    raise 'No results'
  end
end

def assert_no_name_element
  unless has_no_css?('.name')
    raise 'Unexpected results'
  end
end

def assert_correct_category(category, required_cats)
  unless required_cats.any?{ |cat| category.include?(cat)}
    raise 'Unexpected category'
  end
end
