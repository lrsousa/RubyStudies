print "Escreva um texto: "
texto = gets
File.open("kenai.txt", "a") do |f|
	f << texto
end

Dir.entries(Dir.pwd).each do |file_name|
	if file_name == "kenai.txt"
		idea = File.read(file_name)
		puts idea
	end
end

require 'net/http'
Net::HTTP.start('www.caelum.com.br', 80) do |http|
	print(http.get('/').body)
end