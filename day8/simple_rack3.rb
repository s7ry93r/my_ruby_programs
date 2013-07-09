#!/usr/bin/env ruby
require 'rubygems'
require 'rack'

class SimpleRack3
 def call(env)

  if ARGV.count != 1
    puts 
    [400, {'Content-Type' => "text/plain"}, ["Must provide 1 commandline arg, and you provided #{ARGV.count}!"]]
  else
    [200, {'Content-Type' => "text/plain"}, ["The command line argument you typed was: #{ARGV[0]}"]]
  end 
 end
end


