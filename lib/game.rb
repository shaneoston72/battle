require './lib/player'
require 'pry'

class Game


  attr_reader :player1, :player2, :current_player, :other_player

  def self.create(player1, player2, player_klass: Player)
    @player_klass = player_klass
    @game = Game.new(@player_klass.new(player1),
                     @player_klass.new(player2))
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    # binding.pry
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @other_player = @player1
  end

  def switch
    if @current_player == @player1
      @current_player = @player2
      @other_player = @player1
    else
      @current_player = @player1
      @other_player = @player2
    end
  end

  def hugs(player)
    player.hugged
  end

  def bear_hugs(player)
    player.bear_hugged
  end


end
