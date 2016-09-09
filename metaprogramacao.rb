class Franquia
	def initialize
		@restaurantes = []
	end

	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end
end

class Restaurante
	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		@@total ||= 0
		@@total = @@total + 1
		puts "Restaurantes criados: #{@@total}"
		@nome = nome
	end

	class << self
		def relatorio
			puts "Foram criados #{@@total} restaurantes"
		end
	end
end

restaurante_um = Restaurante.new("kenai")
restaurante_dois = Restaurante.new("Conchita")

#metodo relatorio roda apenas na classe.
Restaurante.relatorio