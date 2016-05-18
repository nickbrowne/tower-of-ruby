require './lib/tower'

RSpec.describe Tower do
  describe ".fully_stacked" do
    it "returns an instance of a tower which is fully stacked" do
      tower = Tower.fully_stacked

      expect(tower).to be_a Tower
      expect(tower.stack).to eq [
        Ring[1],
        Ring[2],
        Ring[3],
        Ring[4],
        Ring[5],
      ]
    end
  end

  describe "#push" do
    context "valid move" do
      it "pushes a ring onto the stack" do
        ring = Ring[1]
        tower = Tower.new

        expect(tower.push(ring)).to_not raise_error
        expect(tower.stack).to eq [
          Ring[1]
        ]
      end
    end

    context "invalid move (ring being pushed is larger)" do
      it "raises an error" do
        ring = Ring[2]
        tower = Tower.new(rings: [Ring[1]])

        expect{tower.push(ring)}.to raise_error RingTooBig
        expect(tower.stack).to eq []
      end
    end
  end

  describe "#==" do
    context "comparing towers with the same rings" do
      it "returns true" do
        tower_1 = Tower.new(rings: [Ring[1]])
        tower_2 = Tower.new(rings: [Ring[1]])

        expect(tower_1 == tower_2).to eq true
      end
    end

    context "comparing towers with different rings" do
      it "returns false" do
        tower_1 = Tower.new(rings: [Ring[1]])
        tower_2 = Tower.new(rings: [Ring[2]])

        expect(tower_1 == tower_2).to eq false
      end
    end
  end
end
