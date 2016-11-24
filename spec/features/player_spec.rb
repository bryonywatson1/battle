require 'player.rb'

describe Player do

  context "when players method name is called" do

    let(:user_name) {double(:user_name)}
    subject(:player) {described_class.new(user_name)}

    it "should return the name" do
      expect(player.name).to eq(user_name)
    end
  end

  context "When players method hp is called" do

    it "should return 60 a default of 60" do
      expect(player.hp).to eq 60
    end
  end
end
