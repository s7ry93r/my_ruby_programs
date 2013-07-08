#!/usr/bin/env ruby
require 'rubygems'

if ARGV.count != 1
  puts "Must provide 1 commandline arg!"
  exit!
end 

my_rack_proc = lambda{ |env| [200, {'Content-Type' => "text/plain"}, ["The command line argument you typed was: #{ARGV[0]}"]]}

puts my_rack_proc.call({})
