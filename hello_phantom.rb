require 'watir-webdriver'
b = Watir::Browser.new :phantomjs
b.goto "www.google.com"
puts b.url #"http://www.google.com.au/"
puts b.title #"Google"