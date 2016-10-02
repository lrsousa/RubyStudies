upcase_it = :upcase.to_proc

puts upcase_it.call('abcde')
#puts upcase_it.call(123) # NoMethodError: undefined method `upcase' for 123:Fixnum


puts "##############################"

# Forma tradicional usando bloco
puts %w{pera uva jaca}.map { |fruit| fruit.upcase }
# ["PERA", "UVA", "JACA"]

# Usando o #to_proc
puts %w{pera uva jaca}.map(&:upcase)
# ["PERA", "UVA", "JACA"]
