#!/usr/bin/env ruby
require 'rubygems'

my_rack_proc = lambda{ |env| [200, {'Content-Type' => "text/plain"}, ["Hello. This time is #{Time.now}"]]}

puts my_rack_proc.call({})

