Feature: notifier initializes

  As a programmer
  I want to use notifier
  So that I can tell the user something happened

  Scenario Outline: create notifier
    Given I create notifier
    And the plaform is "<platform>"
    When I check the platform notifier
    Then My notifier should be "<notifier>"

  Scenarios: various platforms
    | platform | notifier                 |
    | linux    | Notifier::LinuxNotifier  |
    | mac      | Notifier::MacNotifier    |
    | cygwin   | Notifier::CygwinNotifier |
    | windows  | Notifier::WindowsNotifier |

