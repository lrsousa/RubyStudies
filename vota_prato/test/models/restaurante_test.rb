require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
    fixtures :restaurantes

    def test_restaurante
        restaurante = Restaurante.new(
            :nome => "Restaurante Leonardo",
            :endereco => "endereco do restaurante leonardo",
            :especialidade => "pizza")

        msg = "restaurante nao foi salvo. errors: #{restaurante.errors.inspect}"

        assert restaurante.save, msg

        restaurante_kenai_copia = Restaurante.find(restaurante.id)

        assert_equal restaurante.nome, restaurante_kenai_copia.nome
    end
end
