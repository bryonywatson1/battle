require 'sinatra/base'
require_relative 'player'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1
    @player2_name = $player2
    erb :play
  end

  get '/hit' do
    @player1_name = $player1
    @player2_name = $player2
    p @player1_name.attack(@player2_name)
    erb :hit
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
