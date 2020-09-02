Feature: Prashna App API Testing

  Scenario: Checking the posts topic wise
    Given I am on Prashna Page
    When I send the api request for topics
    Then I display the body of the posts in the json format
    And The status should be '200'

    Scenario: Display users followed topics
      Given I am on Prashna Page
      When I send the get request using auth token
      Then I should display the output




