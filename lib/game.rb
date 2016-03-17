require './lib/player'

class Game

  attr_reader :player1, :player2, :current_player, :other_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player2
    @other_player = @player1
  end

  def hugs(name)
    name.hugged
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
end
