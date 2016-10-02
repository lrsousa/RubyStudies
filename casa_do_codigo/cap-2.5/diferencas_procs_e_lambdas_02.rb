# Dentro de blocos, quando usamos return,oque de fato é retornado
# é o método associado, já que blocos/procs não consideram o return.
# Em contrapartida, lambdas são mais próximos a métodos e funções
# e retornam apenas ao contexto a que pertencem

def proc_stop
    puts "Cheguei..."
    proc { puts "Hey"; return; puts "Ho!" }.call
    puts "Saindo..."
end

proc_stop # Cheguei...; Hey

def lambda_stop
    puts "Cheguei..."
    lambda { puts "Hey"; return; puts "Ho!" }.call
    puts "Saindo..."
end

lambda_stop # Cheguei...; Hey; Saindo...
