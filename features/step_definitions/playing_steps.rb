
Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |link_name|
  click_link link_name
end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

When(/^I press "(.*?)"$/) do |button_name|
	click_button(button_name)
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("Make your move")
end

Given(/^I've registered to play$/) do
  visit '/play'
end

When(/^I choose "(.*?)"$/) do |pick|
	click_button(pick)
end

Then(/^I should see a result$/) do
	expect(results).to be true
end

Given(/^I've played a game$/) do
  visit '/'
  fill_in "name", with: "Stephen"
  click_button 'Play'
  click_button 'Paper'
end

def results
	return true if page.has_content?("You lost")
	return true if page.has_content?("You won")
	return true if page.has_content?("It was a draw")
	false
end