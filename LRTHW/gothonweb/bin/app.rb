require 'sinatra'

set :port, 8000
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do 
  return 'suh bro'
end

get '/hello/' do
    erb :hello_form
end

post '/hello/' do
    greeting = params[:greeting] || "Hi There"
    name = params[:name] || "Nobody"

    erb :index, :locals => {'greeting' => greeting, 'name' => name}
end