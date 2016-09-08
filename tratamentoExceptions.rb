class IdadeInsuficienteException < Exception
end

def verificaIdade(idade)
	raise IdadeInsuficienteException, "Voce precisa ser maior de idade..." unless idade > 18
end


begin
	verificaIdade(13)
rescue IdadeInsuficienteException => e
	puts "Foi lancada a exception: #{e}"
end
