class Restaurante < ActiveRecord::Base
	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	validates_presence_of :nome, message: "Deve ser preenchido"
	validates_presence_of :endereco, message: "Deve ser preenchido"
	validates_presence_of :especialidade, message: "Deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome já cadastrado"
	validates_uniqueness_of :endereco, message: "Endereco já cadastrado"

	validate :primeira_letra_deve_ser_maiuscula
	
	private
	def primeira_letra_deve_ser_maiuscula
		errors.add(:nome, "Primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end
end