Story: Using layouts
  As a visitor to the site
  I want to see the appropriate layout for the theme
  So I can see the site I expect to see
  
  Scenario: Using the theme
  When I request "/basic" with the sample theme
  Then the result should have the title "My Themed Page"
  
  Scenario: Not using the theme
  When I request "/basic" without a theme
  Then the result should have the title "My Standard Page"

  Scenario: Controller-specific layout using the theme
  When I request "/with_layout" with the sample theme
  Then the result should have the title "My Themed With Layout Page"
  
  Scenario: Controller-specific layout not using the theme
  When I request "/with_layout" without a theme
  Then the result should have the title "My Non-Themed With Layout Page"

  Scenario: Action-specific layout using the theme
  When I request "/with_layout/specific" with the sample theme
  Then the result should have the title "My Themed For Action Page"
  
  Scenario: Action-specific layout using the theme
  When I request "/with_layout/specific" without a theme
  Then the result should have the title "My Non-Themed For Action Page"

  Scenario: Action-specific layout where there is no theme-specific layout
  When I request "/with_layout/no_theme" with the sample theme
  Then the result should have the title "My Non-Themed Page"