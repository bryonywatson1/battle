require 'sinatra/base'

class Battle < Sinatra::Base
set :sessions, true
run! if app_file == $0

  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly



  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :play
  end
end
