class Checkout
    attr_reader :items

    def initialize
        @items = []
    end

    def scan(item)
        items << item 
        item 
    end

    def total
        items.reduce(0) { |sum, item| sum + item.price }
    end
end