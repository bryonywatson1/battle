require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

#class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    player_2 = Player.new(params[:player2_name])
    $game = Game.new(player_1, player_2)

    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attacked
    erb(:attack)
  end

  # start the server if ruby file executed directly
  #run! if app_file == $0
#end
