require 'game'
feature Game do
let(:life) { double :life }
let(:anna) { double :anna }
let(:receive_damage) { double :receive_damage }
let(:hp_points) { double :hp_points }


  describe '#attack' do
    it 'damages the player' do
      allow(life).to receive(:hp_points)  { 100 }
      expect{anna.attack(life)}.to change{life.hp_points}.by(-10)
    end
  end

end
