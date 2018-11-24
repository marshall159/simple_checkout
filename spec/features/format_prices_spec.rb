# As a shopper
# So that I know how much to pay
# I would like to see all prices correctly formatted (£xx.xx)

describe "Format" do
    it "correctly formats all prices" do 
        given_there_is_a_checkout
        and_there_are_multiple_items
        when_an_item_is_scanned
        then_a_correctly_formatted_price_for_each_item_is_returned
        and_a_correctly_formatted_price_for_the_total_can_be_returned
    end

    def given_there_is_a_checkout 
        @checkout = Checkout.new
    end

    def and_there_are_multiple_items 
        @iphone = Item.new(999.99)
        @case = Item.new(29.99)
        @macbook = Item.new(1499.99)
        @ipad = Item.new(699.99)
    end

    def when_an_item_is_scanned
        @iphone_price = @checkout.scan(@iphone)
        @case_price = @checkout.scan(@case)
        @macbook_price = @checkout.scan(@macbook)
        @ipad_price = @checkout.scan(@ipad)
    end

    def then_a_correctly_formatted_price_for_each_item_is_returned
        expect(@iphone_price).to eq('£999.99')
        expect(@case_price).to eq('£29.99')
        expect(@macbook_price).to eq('£1499.99')
        expect(@ipad_price).to eq('£699.99')
    end

    def and_a_correctly_formatted_price_for_the_total_can_be_returned
        expect(@checkout.print_total).to eq('£3229.96') 
    end
end