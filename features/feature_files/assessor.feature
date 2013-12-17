
@kata
Feature: Scrape the Polk County Assessor
  @kata
  Scenario: Scrape and output info from the Polk County Assessor
   Given I go to http://web.assess.co.polk.ia.us/cgi-bin/web/tt/form.cgi?tt=generalform
   # Given I go to http://web.assess.co.polk.ia.us/cgi-bin/web/tt/infoqry.cgi?tt=card/card&dp=02000931002000&amp;
   
   Then I scrape the table

