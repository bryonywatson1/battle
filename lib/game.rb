class Game

  def initialize(player_klass)
    @player = player_klass.new(name)
  end

  def attack(player)
    self.player.receive_damage
  end

end
