require 'game'

feature Game do

  subject(:game) { described_class.new }

  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:hp_points) { double :hp_points }


  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
