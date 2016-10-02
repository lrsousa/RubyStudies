module Builder
    def build(attributes={})
        new_object = new
        attributes.each do |name, value|
            # O código abaixo é o mesmo que
            # new_object.name = value
            new_object.send "#{name}=", value
        end
        new_object
    end
end

class ShippingPrice
    extend Builder
    attr_accessor :width, :height, :depth
end
shipping = ShippingPrice.build({
    :width => 0.8,
    :height => 0.2,
    :depth => 0.3
})

puts shipping.width # 0.8
