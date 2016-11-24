class Player

  attr_reader :name
  attr_accessor :hp

  DEFAULT_HP = 60

  def initialize(user_name)
    @name = user_name
    @hp = DEFAULT_HP
  end

  def attacked
    self.hp -= 10
  end

end
