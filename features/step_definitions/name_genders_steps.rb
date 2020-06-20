When(/^I select "(.*?)" from the genders dropdown$/) do |gender|
  select(gender, from: 'gender')  
end
