#!/usr/bin/env ruby
require 'rubygems'

class MyApp
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello Rack Participatnts from across the globe"]]
  end
end
