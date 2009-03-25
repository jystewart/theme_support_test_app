Story: Using helpers
  As a visitor to the site
  I want to see the appropriate layout for the theme
  So I can see the site I expect to see

  Scenario: Using the theme
  When I request "/basic" with the sample theme
  Then the result should have the tag "link[href^=/themes/sample/stylesheets/sample.css]"
  Then the result should have the tag "script[src^=/themes/sample/javascript/sample.js]"  
  Then the result should have the tag "img[src^=/themes/sample/images/preview.png]"  