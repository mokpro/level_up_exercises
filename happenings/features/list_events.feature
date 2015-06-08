Feature: Event list
  As a user
  I want to view the event list
  So that I can goto the event

  Scenario: View events (Happy)
    Given that the event list is not empty
    When I go to the list page
    Then I should be able to see the details of the events

  Scenario: View events (Sad)
    Given that the event list is empty
    When I go to the list page
    Then I should see a message "No Events found"

  Scenario: Sort events (Happy)
    Given that I am on events list page
    When I click on "Time"
    Then the list is sorted by "Time" in ascending order

  Scenario: Calculate Distance
    Given that I am on the events list page
    And I my current location is stored in session
    When I see the distance column in the event list
    Then show the distance from my current location to the event
