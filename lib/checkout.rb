require_relative 'printer'

class Checkout
    attr_reader :items, :printer 

    def initialize(printer = Printer.new)
        @items = []
        @printer = printer 
    end

    def scan(item)
        items << item 
        printer.print_item(item) 
    end

    def print_total
        printer.print(total)
    end

    def total
        items.reduce(0) { |sum, item| sum + item.price }
    end
end