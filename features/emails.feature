Feature: Emails
  As a visitor to the site
  I want to see the appropriate copy in my emails
  So I can get the information I need

  Scenario: Plain text email where only main version available
    Given I am on the send email page with the sample theme
    When I click "Send First Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should not be MIME encoded
    And that email should say "Welcome to main site"

  Scenario: Plain text email where themed version available and theme requested
    Given I am on the send email page with the sample theme
    When I click "Send Second Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should not be MIME encoded
    And that email should say "Welcome to the themed site"

  Scenario: Plain text email where themed version available and theme not requested
    Given I am on the send email page
    When I click "Send Second Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should not be MIME encoded
    And that email should say "Welcome to main site"

  Scenario: Multipart email where only main version available
    Given I am on the send email page with the sample theme
    When I click "Send Third Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should be multipart
    And that email should say "Welcome to main site"
  
  Scenario: Multipart email where themed version available and theme requested
    Given I am on the send email page with the sample theme
    When I click "Send Fourth Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should be multipart
    And that email should say "Welcome to the themed site"  
  
  Scenario: Multipart email where themed version available and theme not requested
    Given I am on the send email page
    When I click "Send Fourth Email"
    Then a mail should be sent to "citizen@example.org"
    And that email should be multipart
    And that email should say "Welcome to main site"
  