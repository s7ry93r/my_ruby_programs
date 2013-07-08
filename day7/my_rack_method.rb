#!/usr/bin/env ruby
require 'rubygems'
require 'rack'

def my_method(env)
  [200, {}, ["method_called"]]
end

Rack::Handler::WEBrick.run method(:my_method), :Port => 9876
