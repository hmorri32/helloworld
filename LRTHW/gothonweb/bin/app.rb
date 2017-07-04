require 'sinatra'

set :port, 8000
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do 
  return 'suh bro'
end

get '/hello/' do
  greeting = params[:greeting] || 'Hello mahn'
  erb :index, :locals => {'greeting' => greeting}
end

