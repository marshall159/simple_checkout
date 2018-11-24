class Printer
    def print(item)
        "£#{item.round(2)}"
    end

    def print_item(item)
        "£#{item.price.round(2)}"
    end
end