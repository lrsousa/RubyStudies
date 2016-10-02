# variáveis em excesso não causam nenhum problema com blocos e são
# simplesmente ignorados, e isso acontece com procs, mas não com lambdas:

show = proc { |x, y| puts "#{x}, #{y}" }

show.call(1)        # 1,
show.call(1, 2, 3)  # 1, 2

puts "################################"

show = ->(x,y) { puts "#{x}, #{y}" }

show.call(1, 2)     # 1, 2
show.call(1)        # ArgumentError: wrong number of arguments (1 for 2)
show.call(1, 2, 3)  # ArgumentError: wrong number of arguments (3 for 2)
