require 'sinatra/base'
# require './lib/player'
require './lib/game'
require 'pry'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.create(params[:player_one], params[:player_two])
    redirect to('/play')
  end

  # THIS DOES NOT WORK!
  # before do
  #   @game = Game.instance
  #   @player1 = @game.player1
  #   @player2 = @game.player2
  # end

  get '/play' do
    @game = Game.instance
    @player1 = @game.player1
    @player2 = @game.player2
    redirect to ('/winner') if @game.other_player.winner?
    @game.switch
    erb(:play)
  end

  get '/attack' do
    @game = Game.instance
    @player1 = @game.player1
    @player2 = @game.player2
    @game.hugs(@game.other_player)
    erb(:attack)
  end

  get '/winner' do
    @game = Game.instance
    @player1 = @game.player1
    @player2 = @game.player2
    erb(:winner)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
