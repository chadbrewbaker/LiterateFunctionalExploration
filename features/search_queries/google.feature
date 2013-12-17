Feature: Searching on Google

  Scenario Outline: Search for cats
    Given I log into Google
    Then I search for cats


   And I use this inline hash for bork:
      | blar | 33 |
      | yabble  | sefsdf |
   And I go to sleep for <baz> seconds
   And I have chosen <foo> with <bar>


  Examples:
    | foo | bar | baz |
   | bork | foble | 5 |
