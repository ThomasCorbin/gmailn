Feature: notifier initializes

  As a programmer
  I want to use notifier
  So that I can tell the user something happened

  Scenario: create notifier
    Given I create notifier
    And the plaform is "linux"
    When I check the platform notifier
    Then My notifier should have "LinuxNotifier"

