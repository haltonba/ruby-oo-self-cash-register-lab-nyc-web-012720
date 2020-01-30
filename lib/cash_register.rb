class CashRegister

attr_accessor :total, :discount, :items, :last_transaction_price

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item (title, price, quantity = 1)
        @total += price * quantity
        quantity.times {|i| @items << title}
        @last_transaction_amount = price * quantity
    end

    def apply_discount
        @total *= ((100 - @discount).to_f/100)
        @discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." 
        : "There is no discount to apply."
    end

    def void_last_transaction
        @total -= @last_transaction_amount
    end
end
