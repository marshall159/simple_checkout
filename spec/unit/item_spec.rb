require 'item'

describe Item do
    subject(:item) { described_class.new(99) }

    describe "#price" do
        it "returns the price" do
            expect(item.price).to eq(99)
        end
    end
end