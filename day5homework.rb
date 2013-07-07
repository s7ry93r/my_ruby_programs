#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))

the_counter = 0

array_of_tags = ["p", "pre", "h1", "h2", "h3", "h4", "h5", "li"]

array_of_tags.each do |tag|
  iteration = 1
  puts 
  puts "===========> STARTED SEARCHING for VISIBLE ELEMENT TAGS like \'#{tag}\'"
  doc.css(tag).each do |content|
    ihtml = content.inner_html
    puts ihtml
    cntr = ihtml.scan(/\b[Tt]he\b/).count
    puts "\t======> Inner HTML block \##{iteration} for tag \'#{tag}\' and has found #{cntr} occureneces of 'the' word."
    puts
    iteration += 1
    the_counter += cntr
  end

end

puts "++++++> TOTAL COUNT of 'the' occurences in this document is #{the_counter}"
 


