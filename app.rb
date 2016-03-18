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

  before do
    @game = Game.instance
  end

  get '/play' do
    redirect to ('/winner') if @game.other_player.winner?
    @game.switch
    erb(:play)
  end

  get '/attack' do
    @game.hugs(@game.other_player)
    erb(:attack)
  end

  get '/winner' do
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
