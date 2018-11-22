require 'checkout'

describe Checkout do
    subject(:checkout) { described_class.new }
    let(:item) { double(:item) }

    describe "#scan" do
        it "can scan an item" do 
            expect(checkout).to respond_to(:scan).with(1).argument
        end

        it "returns the last item scanned" do
            expect(checkout.scan(item)).to eq(item)
        end
    end

    describe "#items" do
        it "should initially be empty" do
            expect(checkout.items).to be_empty
        end
        
        it "stores scanned items" do
            checkout.scan(item)

            expect(checkout.items).to include(item)
        end
    end
end