class Ring
  attr_reader :size

  def self.[] (size)
    self.new(size)
  end

  def ==(other)
    self.size == other.size
  end

  private

  def initialize(size)
    @size = size
  end
end
