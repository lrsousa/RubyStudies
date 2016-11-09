class UsuariosController < ApplicationController


  def index
    @usuarios = Usuario.all
  end

  def desativar
    @usuario = mudar_status(params, false)
    render @usuario
  end

  def ativar
    @usuario = mudar_status(params, true)
    render @usuario
  end

  private
  def mudar_status(params, status)
    usuario = Usuario.find(params[:id])
    usuario.ativado = status
    usuario.save!
    usuario
  end

end
