module Payment
    MIN_COST_FOR_FREE_SHIPPING = 10.00

    class Purchase
        attr_accessor :total_cost
        def calculate_shipping!
            if total_cost >= MIN_COST_FOR_FREE_SHIPPING
                puts "Parabéns, frete grátis para você!"
            else
                puts "Sem frete grátis :-("
            end
        end
    end
end

purchase = Payment::Purchase.new
purchase.total_cost = 15.00
purchase.calculate_shipping! # Parabéns,
# frete grátis para você!

puts MIN_COST_FOR_FREE_SHIPPING # uninitialized constant
puts Payment::MIN_COST_FOR_FREE_SHIPPING # 10.0
