require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    @game.switch
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.hugs(@game.other_player)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
