# As a shopper
# So I know how much an item costs
# I would like to be able to see its price

describe "Ttem" do 
    it "can display its price" do 
        given_there_is_an_item
        then_item_should_be_able_to_display_price
    end

    def given_there_is_an_item
        @item = Item.new(99)
    end

    def then_item_should_be_able_to_display_price
        expect(@item.price).to eq(99)
    end
end