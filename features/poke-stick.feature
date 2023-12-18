Feature: Poke: The Stick

  Scenario: --help
    When I get help for "stick"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version  |
      |--help     |
      |--file     |
      |--mimetype |
      |--extension|
