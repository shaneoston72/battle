require 'player'

describe Player do
  subject(:player) { described_class.new name}
  let(:name) { double :name }
  let(:player2) { double :player2 }

  describe '#initialize' do
    it 'returns the player\'s name' do
      expect(player.name).to eq name
    end
    it 'has 0 hit points to start' do
      expect(player.hit_points).to eq described_class::HIT_POINTS
    end
  end
  # describe '#hugs' do
  #   it 'hugs the players' do
  #     expect(player).to receive(:hugs)
  #     player.hugs(player2)
  #   end
  # end
  describe '#hugged' do
    it 'reduces player\'s hit points' do
      expect(player).to receive(:hugged)
      player.hugged
    end
  end

  describe '#winner' do
    it 'will be true when player\'s hug points are at or above 100' do
      10.times { player.hugged }
      expect(player.winner?).to be true
    end
  end
end
