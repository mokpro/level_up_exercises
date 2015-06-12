Given(/^that the event list is not empty$/) do
  begin
    FactoryGirl.create :event
  rescue Exception => e
    print e
  end
end

When(/^I go to the list page$/) do
  page.get '/events'
end

Then(/^I should be able to see the details of the events$/) do
  events_json = JSON last_repsonse.body
  events_json.should have(3).events

  events  = Event.all
  events.should_not be_empty
end

Given(/^that the event list is empty$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a message "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that I am on events list page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the list is sorted by "([^"]*)" in ascending order$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that I am on the events list page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I my current location is stored in session$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I see the distance column in the event list$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^show the distance from my current location to the event$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
