Story: Using templates
  As a visitor to the site
  I want to see the appropriate layout for the theme
  So I can see the site I expect to see
  
  Scenario: Overridden action exists and we're using the theme
  When I request "/basic/myaction" with the sample theme
  Then the result should have the subtitle "My Themed Subtitle"
  
  Scenario: Overridden action exists and we're not using the theme
  When I request "/basic/myaction" without a theme
  Then the result should have the subtitle "My Non-Themed Subtitle"
  
  Scenario: No overridden action exists and we're using the theme
  When I request "/basic/nofallback" with the sample theme
  Then the result should have the subtitle "My Non-Themed Page"