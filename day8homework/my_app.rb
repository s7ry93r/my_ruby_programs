#!/usr/bin/env ruby


class MyApp


  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)
    parms = request.params['string']

    if (parms.nil?)
      response['Content-Type'] = "text/plain"
      response.status = 400
      response.body = ["Need a 'string' parameter passed in!"]
    else
      response['Content-Type'] = "text/plain"
      response.status = 200
      response.body = ["The string passed in is: \'#{parms}\' and reversed is: \'#{parms.reverse}\'"]
    end

    response.finish

  end


end
