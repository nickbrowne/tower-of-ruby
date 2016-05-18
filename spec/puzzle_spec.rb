require './lib/puzzle'

RSpec.describe Puzzle do
  let(:puzzle) { Puzzle.new }

  describe "#solve" do
    it "moves the rings from tower 1 to tower 3" do
      expect(puzzle.tower_1).to eq Tower.fully_stacked
      expect(puzzle.tower_3).to eq Tower.new

      expect(puzzle.solve).to_not raise_error

      expect(puzzle.tower_1).to eq Tower.new
      expect(puzzle.tower_3).to eq Tower.fully_stacked
    end
  end
end
