=begin
Existe uma forma de se usar blocos que não usa o par yield/block_given?. Essa
forma é explicitar o bloco com um parâmetro da função através do operador &, que
sempre deverá vir por último na lista de parâmetros:
=end

def announce_it(name, &block)
    puts "Hey #{name}, it's gonna be... "
    puts "Legen..."
    # Se o bloco não for passado, block será nil
    block.call if block
    puts "Dary!"
end

announce_it("Ted")
announce_it("Ted") { puts "Wait for it..." }
