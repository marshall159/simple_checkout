# As a shopper
# So that I can buy an item
# I would like to be able to scan items at the checkout

describe "Checkout" do 
    it "can scan items" do 
        given_there_is_a_checkout
        and_there_is_an_item
        then_items_should_be_able_to_be_scanned_at_checkout
    end

    def given_there_is_a_checkout
        @checkout = Checkout.new
    end

    def and_there_is_an_item
        @item = Item.new(99)
    end

    def then_items_should_be_able_to_be_scanned_at_checkout
        expect { @checkout.scan(@item) }.not_to raise_error
    end
end