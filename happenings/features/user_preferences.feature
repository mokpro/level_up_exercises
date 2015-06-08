Feature: Add user preference
  As a user
  I want to add my preferences - Timings, Distance, Cost
  So that I can get event results according to my preferences

  Scenario: Add user preferences (Happy)
    Given that session/cookies are enabled
    And I am on the Preferences page
    When I select "Start Time"
    And I select "End Time"
    Then save the preferences into the session
