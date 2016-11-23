require 'sinatra/base'

class Battle < Sinatra::Base
set :sessions, true
enable :sessions


  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly



  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
     redirect '/play'
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
     erb :play
  end

get '/attack' do
    erb :attack
  end

  run! if app_file == $0
end
