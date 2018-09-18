require 'sinatra'
require 'awesome_print'

get '/' do
  "Hello World!"
end

post '/events' do
  status 200
  JSON.parse(request.env["rack.input"].read)['challenge']
end