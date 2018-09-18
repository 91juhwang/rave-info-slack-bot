require 'sinatra'
require 'awesome_print'

get '/' do
  "Hello World!"
end

get '/events' do
  ap params
  challenge_code = params[:challenge_code]
  ap challenge_code
  status 200
  body challenge_code
end