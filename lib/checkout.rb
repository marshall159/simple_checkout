class Checkout
    attr_reader :items

    def initialize
        @items = []
    end

    def scan(item)
        items << item 
        item 
    end
end