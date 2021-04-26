class Player
  attr_accessor :score
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 1
  end

  def wrong_answer
    @score -= 1
  end

end