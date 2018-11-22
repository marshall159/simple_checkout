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

    describe "#total" do
        it "adds the total price of all scanned items" do
            allow(item).to receive(:price).and_return(100)

            checkout.scan(item)
            checkout.scan(item)
            checkout.scan(item)

            expect(checkout.total).to eq(300)
        end
    end
end