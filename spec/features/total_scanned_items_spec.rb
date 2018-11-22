# As a shopper
# So that I know how much to pay
# I would like to be able to see a total for all scanned items

describe "Total" do
    it "adds up the total of all scanned items" do 
        given_there_is_a_checkout
        and_there_are_multiple_items
        when_items_are_scanned
        then_a_total_price_for_all_items_can_be_returned
    end

    def given_there_is_a_checkout 
        @checkout = Checkout.new
    end

    def and_there_are_multiple_items 
        @iphone = Item.new(1000)
        @case = Item.new(30)
        @macbook = Item.new(1500)
        @ipad = Item.new(700)
    end

    def when_items_are_scanned 
        @checkout.scan(@iphone)
        @checkout.scan(@ipad)
        @checkout.scan(@macbook)
        @checkout.scan(@case)
    end

    def then_a_total_price_for_all_items_can_be_returned 
        expect(@checkout.total).to eq(3230) 
    end
end