#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://rubylearning.com/"))

puts doc.xpath("//h2[@id='slogan']").first.content

puts doc.css("#footer p strong:first-child")[0].content


