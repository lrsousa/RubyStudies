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

	def expandir(restaurante)
		def restaurante.cadastrar_vips
			puts "Restaurante #{self.nome} agora com área VIP!"
		end
	end

	def method_missing(name, *args)
		@restaurantes.each do |r|
			return "O restaurante #{r.nome} já foi cadastrado." if r.nome.eql? *args
		end
		return "O restaurante #{args[0]} não foi cadastrado ainda."
	end
end

class Restaurante
	attr_accessor :nome

	def fechar_conta(dados)
		puts "Conta fechado no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
	end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Kenai"
restaurante_dois = Restaurante.new
restaurante_dois.nome = "Conchita"

restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'

franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end

franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

puts franquia.ja_cadastrado?("Kenai")
puts franquia.ja_cadastrado?("Carol")
