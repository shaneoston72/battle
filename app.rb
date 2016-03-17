require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_one])
    $player2 = Player.new(params[:player_two])
    $game = Game.new($player1, $player2)
    redirect to('/play')
  end

  get '/play' do
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    $game.hugs(@player2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
