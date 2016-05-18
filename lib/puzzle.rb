require_relative "tower"

class Puzzle
  attr_reader :tower_1, :tower_2, :tower_3

  def initialize
    @tower_1 = Tower.fully_stacked
    @tower_2 = Tower.new
    @tower_3 = Tower.new
  end

  def solve
    # TODO: implement this method using push and pop on the towers!
  end
end
