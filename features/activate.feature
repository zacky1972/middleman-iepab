Feature: middleman-iepab is activated
  Scenario: Activate middleman-iepab
    Given a fixture app "empty-app"
    And a file named "config.rb" with:
      """
      activate :iepab
      """
    When I run `middleman build --verbose`
    Then the output should not contain "Unknown Extension: iepab"
    And the exit status should be 0
