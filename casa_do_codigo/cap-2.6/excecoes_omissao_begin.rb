def calculate_installment_price(total_value, installments)

    puts "O resultado é #{total_value / installments}"
rescue
    puts "Não foi possível calcular o valor da parcela"
ensure
    puts "Pronto."
end

calculate_installment_price(100, 5) # O resultado é 20
# Pronto.
calculate_installment_price(100, 0) # Não foi possível calcular
# o valor da parcela
# Pronto.
