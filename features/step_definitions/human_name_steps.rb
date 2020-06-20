When('I click the suggest button next to the human name field') do
  click_button('Suggest')
end

Then('A random name appears in the human name field') do
  name_field = find_field('original_name')
  @random_name = name_field.value
  assert_is_not_blank(@random_name)
end

And('The suggested name is present at least once in the generated names') do
  required_names = @random_name.split
  generated_names = all('div', class: 'name_heading')
  assert_human_name_in_generated_names(generated_names, required_names)
end

When(/^I enter "(.*?)" in the human name field$/) do |name|
  fill_in('original_name', with: name)
end

Then(/^"(.*?)" is present at least once in the generated names$/) do |name|
  required_names = name.split
  generated_names = all('div', class: 'name_heading')
  assert_human_name_in_generated_names(generated_names, required_names)
end

Then('None of the generated names contain integers or special chars') do
  generated_names = all('div', class: 'name_heading')
  assert_chars_not_in_names(generated_names)
end


#helper methods
def assert_is_not_blank(field_value)
  if field_value == ''
    raise 'Value of field is nil'
  end
end

def assert_human_name_in_generated_names(generated_names, required_names)
  generated_names.each do |name|
    if name.text.include?(required_names[0]) || name.text.include?(required_names[1])
      return
    end
  end
  raise 'Human name not found in generated names'
end

def assert_chars_not_in_names(generated_names)
  char_set = '1234567890!@#$%^&*()|/?.<,``~:;'

  generated_names.each do |name|
    unless name.text.count(char_set).zero?
      raise 'Invalid character found in generated names'
    end
  end
end
