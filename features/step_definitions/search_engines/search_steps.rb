
When /^I log into Google$/ do
  $browser.goto 'http://www.google.com'
end

When /^I search for cats$/ do
  SearchEngines::GooglePage.search_for("cats")
end


When /^I use this inline hash for bork:$/ do |table|
  parameters = table.rows_hash
  @blar = parameters['blar']
  @yabble = parameters['yabble']
  begin
    puts blar.inspect
    puts yabble.inspect
  rescue
  end
end

When /^I have chosen (\w+) with (\w+)$/ do |thing_one, thing_two|

 puts thing_one.inspect
  puts thing_two.inspect
end



When /^I go to sleep for (\w+) seconds$/ do |seconds|
  sleep seconds.to_i
end
