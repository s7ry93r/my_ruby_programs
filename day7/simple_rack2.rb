#!/usr/bin/env ruby
require 'rubygems'
require 'rack'

if ARGV.count != 1
  puts "Must provide 1 commandline arg!"
  exit!
end 

def my_rack_method(env)
 [200, {'Content-Type' => "text/plain"}, ["The command line argument you typed was: #{ARGV[0]}"]]
end

Rack::Handler::WEBrick.run method(:my_rack_method), :Port => 8500
