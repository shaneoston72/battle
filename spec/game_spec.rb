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

  describe '#bear_hugs' do
    it 'bear hugs the players' do
      expect(player).to receive(:bear_hugged)
      game.bear_hugs(player)
    end
  end

  describe '#current_player' do
    it 'starts as player 1 after switch' do
      game.switch
      expect(game.current_player).to eq player
    end
  end
end
