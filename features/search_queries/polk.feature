@kata
Feature: Scrape the Iowa Senate Table

  Scenario: Scrape and output the table of Iowa Senators
    Given I go to https://www.legis.iowa.gov/legislators/senate
    Then I scrape the table of senators

