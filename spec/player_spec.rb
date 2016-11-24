require 'player'
feature Player do

  subject(:dave) { Player.new('Dave') }
  describe '#name' do
    it 'returns a players name' do
      expect(dave.name).to eq 'Dave'
    end
  end
end
