Feature: Log out Functionality [AutomationS3-AD]
#@FIDEX-419
  Background: Log in Page
    Given User should be on log in page

  @FIDEX-416 @LogoutAutomated
  Scenario Outline: User can log out and ends up in login page
    Given '<User>' log in with valid credentials as '<username>' and '<password>'
    And User click '<user menu>' on right side of  top bar
    Then User should be landing on Log in page

    Examples:
      | User         | username                | password     | user menu    |
      | salesmanager | salesmanager15@info.com | salesmanager | salesmanager |
      | posmanager   | posmanager10@info.com   | posmanager   | posmanager   |
