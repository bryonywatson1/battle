require 'game'

describe Game do
   let(:player) {double(:player)}
   let(:player2) {double(:player)}
   let(:hp) {double(:hp)}
   #let(:lost_point) {double(:lost_points)}
  subject(:game) {described_class.new(player, player2)}
  context "when attack method is called it" do

    it "should reduce hp by 10" do
      allow(player).to receive(:hp).and_return 60
      allow(player).to receive(:hp=).with(50)
      expect(game.attacked(player)).to eq 50
    end
  end



end
