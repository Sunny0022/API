require 'cucumber'
require "#{File.dirname(__FILE__)}/../../features/pages/test_page"
require "#{File.dirname(__FILE__)}/../../features/pages/post_page"
require "#{File.dirname(__FILE__)}/../../features/pages/put_page"
require 'httparty'

Given(/^I am on Reqres Page$/) do
  @topic = Topics_page.new

  @topic.get_output

end

When(/^I pass the Http request of the user list$/) do
   status_code = @topic.get_code
   puts status_code
    @topic.get_output
end

Then(/^I should display the request code, message and body$/) do
   response = @topic.get
   puts response
    @topic.get_output
end

Given(/^I am on Login Page$/) do
  @post = PostApi.new
  @post.get_input
end

When(/^I send the http post request$/) do
   res = @post.get
   puts res

end

Then(/^I should display the values of the created user$/) do
   @post.get_input
end

Given(/^I am on user page$/) do
  @put_api = PutApi.new
end

When(/^I send the HTTP PUT request$/) do
  @put_api.get_input
end

Then(/^I should see the updated user detail$/) do
  res =  @put_api.get
  puts res
  @put_api.get_input
end
