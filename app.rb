require 'sinatra'
require 'awesome_print'

get '/' do
  "Hello World!"
end

post '/events' do
  challenge_code = request.body['challenge']
  ap request.body
  ap challenge_code
  status 200
  body challenge_code
end