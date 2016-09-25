require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
    fixtures :restaurantes

    def test_procura_resaturante
        get :busca, :nome => 'Restaurante Kenai'
        assert_not_nil assigns(:restaurante)
        assert_equal restaurantes(:kenai).nome, assigns(:restaurante).nome
        assert_redirect_to :action => 'show'
    end

    def test_procura_restaurante_nao_encontra
        get :busca, :nome => 'Boteco'
        assert_redirect_to :action => 'index'
        assert_equal 'Restaurante não encontrado.', flash[:notice]
    end
end
