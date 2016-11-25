require_relative 'player'

class Game

  attr_accessor :player_1, :player_2


  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = [@player_1, @player_2]
  end

  def attacked
    switch_turn
    return lost_points(self.player_2) if @turn[0] == @player_1
    return  lost_points(self.player_1) if @turn[0] == @player_2
  end

  def switch_turn
    @turn.rotate!
  end

  def who_is_being_attacked
    @turn[1]
  end

  def whose_turn
    @turn[0]
  end

private
  def lost_points(player)
    player.hp -= 10
  end

end
