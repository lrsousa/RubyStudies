module Shipping
    CUBED_WEIGHT_FACTOR = 167
    
    def dimensional_weight
        width * depth * height * CUBED_WEIGHT_FACTOR
    end
end

class ShippingPrice
    include Shipping
    attr_accessor :width, :depth, :height
end

shipping = ShippingPrice.new
shipping.width = 0.5;
shipping.depth = 0.8;
shipping.height = 0.3;

puts shipping.dimensional_weight # 20.04
