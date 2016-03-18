class Player

  HIT_POINTS = 0

  attr_reader :name, :hit_points

  def initialize(name, hit_points: HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @winner = false
  end

  def hugged
    @hit_points += Kernel.rand(0..10)
  end

  def bear_hugged
    @hit_points += Kernel.rand(0..10) * 2
  end

  def winner?
    hit_points >= 100
  end

end
