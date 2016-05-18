require_relative 'ring'
require_relative 'errors/ring_too_big'

class Tower
  attr_reader :rings

  def initialize(rings: [])
    @rings = rings
  end

  def ==(other)
    self.rings == other.rings
  end
end
