class Turma
	attr_accessor :nomes

	def initialize(*alunos)
		@nomes = alunos;
	end

	def each
		@nomes.each do |nome|
			yield nome
		end
	end
end


fj91 = Turma.new("leonardo", "carol", "kenai", "conchita")

fj91.each do |nome|
	puts nome
end