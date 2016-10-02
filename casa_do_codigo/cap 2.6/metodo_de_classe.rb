class Purchase
    attr_accessor :shipping_cost, :weight, :distance

    def self.build_free_shipping
        purchase = new
        purchase.shipping_cost = 0
        purchase
    end
end

p2 = Purchase.build_free_shipping # #<Purchase:0x0...0 @shipping_cost=0>
p2.shipping_cost = 3
puts p2.shipping_cost

p1 = Purchase.build_free_shipping # #<Purchase:0x0...0 @shipping_cost=0>
puts p1.shipping_cost
