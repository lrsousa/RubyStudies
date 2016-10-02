def header(&block)
    puts "Começa..."
    # Precisamos transformar a variável
    # em bloco novamente, por isso colocamos o &
    [1,2,3].each(&block)
    puts "Termina!"
end

header { |num| puts "numemo: #{num} "}
