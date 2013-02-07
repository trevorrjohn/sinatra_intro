require 'sinatra'
require 'haml'

get '/' do
  "<p>Hello world</p>"
end

get '/form' do
  haml :form
end

post '/form' do
  "<p>You said '#{params[:message]}'</p>"
end

get '/about/:name' do |name|
  "Hi #{name}"
end

not_found do
  status 404
  'not found'
end
