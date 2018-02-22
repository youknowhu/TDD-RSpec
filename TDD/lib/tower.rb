class Tower
  attr_accessor :tower_a, :tower_b, :tower_c
  def initialize
    @tower_a=[3,2,1]
    @tower_b=[]
    @tower_c=[]
  end

  def valid_move?(from,to)
    to.empty? || from.last < to.last
  end

  def move(from, to)
    raise "Move Invalid" unless valid_move?(from, to)
    disk = from.pop
    to.push(disk)
  end

  def won?
    tower_a.empty? && (tower_b.size == 3 || tower_c.size == 3)
  end
end
