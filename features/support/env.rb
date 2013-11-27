$LOAD_PATH << '.'
require "bundler/setup"
require 'rspec/expectations'

# require all domain objects
Dir["lib/**/*.rb"].each {|file| require file}


##To support ruby 1.8.7 which has no require_relative method
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end

$domain = "http://www.google.com"

# define the browser
require 'rubygems'
require 'watir'
$browser = Watir::Browser.new
$browser.maximize

# require utilities
$controls = Support::Controls.new

# setup logger
$log = Logger.new(STDOUT)
$log.level = Logger::DEBUG
