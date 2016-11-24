require 'player'

feature Player do


  subject(:anna) { Player.new('Anna') }
  subject(:life) { Player.new('Life') }

  describe '#name' do
    it 'returns a players name' do
      expect(anna.name).to eq 'Anna'
    end
  end

  describe '#hp_points' do
    it 'checks that player has HP points' do
      expect(anna.hp_points).to eq described_class::HP_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(life).to receive(:receive_damage)
      anna.attack(life)
    end
  end
end
