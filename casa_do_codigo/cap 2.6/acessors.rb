class Purchase
    attr_accessor :shipping_cost, :weight, :distance
    def calculate_shipping_cost
        self.shipping_cost = distance * weight
    end
end

purchase = Purchase.new
purchase.weight = 0.5
purchase.distance = 200
purchase.calculate_shipping_cost
puts purchase.shipping_cost #  100.0!
