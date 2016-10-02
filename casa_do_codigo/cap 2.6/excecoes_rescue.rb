def calculate_installment_price(total_value, installments)
    begin
        puts "O resultado é #{total_value / installments}"
    rescue ZeroDivisionError
        puts "Número de parcelas deve ser > 0"
    rescue
        puts "Não foi possível calcular o valor da parcela"
    end
end

calculate_installment_price(100, 5) # O resultado é 20.0
calculate_installment_price(100, 0) # Número de parcelas

# deve ser > 0
calculate_installment_price("", 0) # Não foi possível calcular
# o valor da parcela
