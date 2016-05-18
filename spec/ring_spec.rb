require './lib/ring'

RSpec.describe Ring do
  describe "#==" do
    context "comparing rings with the same size" do
      it "returns true" do
        ring_1 = Ring[1]
        ring_2 = Ring[1]

        expect(ring_1 == ring_2).to eq true
      end
    end

    context "comparing rings with different size" do
      it "returns false" do
        ring_1 = Ring[1]
        ring_2 = Ring[2]

        expect(ring_1 == ring_2).to eq false
      end
    end
  end
end
