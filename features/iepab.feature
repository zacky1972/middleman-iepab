Feature: middleman-iepab invokes external pipeline after building
  Scenario: middleman-iepab invokes echo in external pipeline after building
    Given a fixture app "some-app"
    When I run `middleman build --verbose`
    Then the output should contain "Request: index.html"
    And the output should contain "External: hello"
    And the exit status should be 0
