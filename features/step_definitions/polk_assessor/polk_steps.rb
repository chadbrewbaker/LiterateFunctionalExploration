
When /^I go to (\S+)$/ do |url|
  $browser.goto(url)
  puts $browser.url
end

When /^I scrape the table$/ do
  Polk::Assessor.print_data_from_assessment
end

