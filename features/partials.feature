Story: Using partials
  As a visitor to the site
  I want to see partials appropriate to this site
  So that the right data shows up for me
  
  Scenario: Request with theme, overridden partial exists
  When I request "/basic" with the sample theme
  Then the result should have the text "I am a themed partial"
  
  Scenario: Request without theme, overridden partial exists
  When I request "/basic" without a theme
  Then the result should have the text "I am a non-themed partial"
  
  Scenario: Request with theme, no overridden partial exists
  When I request "/with_layout/no_theme" with the sample theme
  Then the result should have the text "I am a non-themed partial"
