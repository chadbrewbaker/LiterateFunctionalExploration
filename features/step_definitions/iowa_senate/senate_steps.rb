

# I go to https://www.legis.iowa.gov/legislators/senate
When /^I go to url^/ do |url|
  $browser.goto url
end

When /^I scrape the table of senators$/ do
       Senate::SenatePage.print_table_of_senators
end

