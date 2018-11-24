require 'printer'

describe Printer do
    subject(:printer) { described_class.new }
    let(:item) { double("Item", price: 99.99) }

    describe "#print" do 
        it "correctly formats the price" do
            expect(printer.print(99.99)).to eq("£99.99")
        end
    end

    describe "#print_item" do 
        it "correctly formats the price of an item" do
            printed_price = printer.print_item(item)

            expect(printed_price).to eq("£99.99")
        end
    end
end