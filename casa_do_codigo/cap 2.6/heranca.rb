class Shipping

    attr_accessor :distance, :dimension
        def cost
            cubed_weight_factor = 16.7
            distance * dimension/1000 * cubed_weight_factor
        end
    end

class UltraShipping < Shipping
    def cost
        super + (distance) * 0.07
    end
end

shipping = UltraShipping.new
shipping.distance = 200
shipping.dimension = 1.2
puts shipping.cost # 18.00800...
