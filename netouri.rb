#!/usr/bin/env ruby
require 'rubygems'
require 'open-uri'

f = open('http://rubylearning.com/data/text.txt')
puts f.readlines.join
