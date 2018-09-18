require 'sinatra'
require 'awesome_print'

get '/' do
  "Hello World!"
end

post '/events' do
  ap request
  ap request.body
  challenge_code = request.body['challenge']
  ap challenge_code
  status 200
  body challenge_code
end