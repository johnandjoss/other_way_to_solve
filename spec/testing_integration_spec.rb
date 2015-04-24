require('capybara/rspec')
require('./app')
Capybara.app =Sinatra::Application
set(:show_exceptions, false)

describe('counts the repeated words in a sentence', {:type => :feature}) do
  it ('process users word and sentence and returns the amount of repeated words') do
  visit('/')
  fill_in('user_word', :with => 'cat')
  fill_in('user_sentence', :with => 'this is cat cat cat cat')
  click_button('Send words!')
  expect(page).to have_content('4')
end
end
