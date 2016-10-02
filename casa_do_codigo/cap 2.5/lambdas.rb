upcase_it = lambda { |x| x.upcase }

puts upcase_it.call("abc")
# Arity é o número de parâmetros que o lambda aceita
puts upcase_it.arity



#ou pode ser escrito assim

upcase_it = ->(x) { x.upcase }

puts upcase_it.call("abc") # ABC
