#run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }

#require "./my_app"
#run MyApp.new

#require "./simple_rack3.rb"
#run eval("my_rack_method({}) <  #{ARGV[0]}")

require './my_request'
run MyRequest.new
