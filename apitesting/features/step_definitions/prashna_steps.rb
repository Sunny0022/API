require 'cucumber'
require 'rspec/expectations'
require "#{File.dirname(__FILE__)}/../../features/pages/prashna_topics"


Given(/^I am on Prashna Page$/) do
  @topic = Topics.new
end

When(/^I send the api request for topics$/) do
  puts 'Sending the  api request topic wise'
  res = @topic.get
  puts res
end

Then(/^I display the body of the posts in the json format$/) do
  response = @topic.get_new
  puts response
end

And(/^The status should be '200'$/) do
  res = @topic.get
  expect(res).to eq(200)
  puts 'Matching'
end

Then(/^I should display the output$/) do
  puts 'Working fine with Rest client'
end

When(/^I send the get request using auth token$/) do
  res = @topic.followers
  puts res
end
