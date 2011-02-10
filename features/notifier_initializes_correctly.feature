Feature: notifier initializes

  As a programmer
  I want my notifier to work on any platform
  So that I can tell the user something happened

  Scenario Outline: create notifier
    Given I create a notifier
    And the plaform is "<platform>"
    When I check the platform notifier
    Then My notifier should be "<notifier>"

  Scenarios: various platforms
    | platform | notifier                  |
    | linux    | Notifier::LinuxNotifier   |
    | mac      | Notifier::MacNotifier     |
    | cygwin   | Notifier::CygwinNotifier  |
    | windows  | Notifier::WindowsNotifier |

  Scenario: notifer uses platform notifier
    Given I create a notifier
    When I pass the notifier a notification
    Then the platform notifier should get the notification

