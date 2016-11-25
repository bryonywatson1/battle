require 'game'

describe Game do
   let(:player) {double(:player)}
   let(:player2) {double(:player)}
   let(:turn=) {double(:turn)}
   let(:hp) {double(:hp)}
   #let(:lost_point) {double(:lost_points)}
  subject(:game) {described_class.new(player, player2)}
  context "when attack method is called it" do

    it "should reduce hp by 10" do
      allow(player).to receive(:hp).and_return 60
      allow(player).to receive(:hp=).with(50)
      allow(player2).to receive(:hp).and_return 60
      allow(player2).to receive(:hp=).with(50)
      expect(game.attacked).to eq 50
    end
  end

  context "when switch turn is called" do
      it "should be able to switch turns" do
        expect(game.switch_turn).to eq [player2, player]
      end
  end

end
