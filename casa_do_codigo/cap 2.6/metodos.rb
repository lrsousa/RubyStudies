class Purchase

    def initialize(value, shipping)
        @value = value
        @shipping_cost = shipping
    end

    def total_cost
        @value + @shipping_cost
    end
end

purchase = Purchase.new(100.00, 9.50)
puts purchase.total_cost # 109.5
