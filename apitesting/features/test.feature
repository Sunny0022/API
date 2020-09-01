Feature: Getting the Topics data using HTTParty


  Scenario: Getting the Topics get request
    Given I am on Reqres Page
    When I pass the Http request of the user list
    Then I should display the request code, message and body

    Scenario: Getting the Post request
      Given I am on Login Page
      When I send the http post request
      Then I should display the values of the created user


      Scenario: PUT request
        Given I am on user page
        When I send the HTTP PUT request
        Then I should see the updated user detail