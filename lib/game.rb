require_relative 'player'

class Game

  attr_accessor :player_1, :player_2
  
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attacked(player)
    lost_points(player)
  end

private
  def lost_points(player)
    player.hp -= 10
  end

end
