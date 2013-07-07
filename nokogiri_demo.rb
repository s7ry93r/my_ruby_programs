#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://rubylearning.com/"))
puts doc.at(:title)
