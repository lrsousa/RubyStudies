class Person
    attr_accessor :name

    def befriend(people)
        people.each { |friend| friend.add_friend(self) }
    end

    protected
    def add_friend(friend)
        puts "#{name} diz: Olá meu novo amigo #{friend.name}!"
    end
end

joao = Person.new; joao.name = 'João'
pedro = Person.new; pedro.name = 'Pedro'
joaquim = Person.new; joaquim.name = 'Joaquim'

joao.befriend([pedro, joaquim])
# Pedro diz: Olá meu novo amigo João!

joaquim.add_friend(joao)
# NoMethodError: protected method `add_friend'
