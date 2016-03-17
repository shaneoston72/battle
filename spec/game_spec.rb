require 'Game'

describe Game do
  subject(:game) { described_class.new(player, player2) }
  let(:player) { double :player }
  let(:player2) { double :player2 }
  
  describe '#player1' do
    it 'will return player' do
      expect(game.player1).to be player
    end
  end

  describe '#hugs' do
    it 'hugs the players' do
      expect(player).to receive(:hugged)
      game.hugs(player)
    end
  end



end
