require 'watir-webdriver'
require 'cucumber'

Given(/^User is at google home page$/) do
  @browser = Watir::Browser.new
  @browser.goto 'www.google.com'
end

When(/^User searches for "([^"]*)"$/) do |arg|
  @browser.text_field(:id => 'lst-ib').set "#{arg}"
  @browser.send_keys :return
end


Then(/^Search results should contain "([^"]*)"$/) do |arg|
  @browser.wait_until {@browser.text.include? 'seconds'}
  page_output = @browser.text.include? "#{arg}"
  assert (page_output == true)
  @browser.close
end