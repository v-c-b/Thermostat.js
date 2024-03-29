require 'sinatra/base'
require './lib/temp.rb'

class Server < Sinatra::Base
  enable :sessions

  get '/temperature/:temp' do
    headers 'Access-Control-Allow-Origin' => '*'
    Temp.set_temp(params[:temp])
  end

  post '/temperature/:temp' do
    headers 'Access-Control-Allow-Origin' => '*'
    Temp.set_temp(params[:temp])
  end

  get '/temperature' do
    headers 'Access-Control-Allow-Origin' => '*'
    @temp = Temp.get_temp
    erb :temp
  end

  run! if app_file == $PROGRAM_NAME

end
