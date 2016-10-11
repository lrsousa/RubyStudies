class SessionsController < Devise::SessionsController

  def new
    super
  end

  def create
    @user = get_document_type params

    if @user.valid_password?(params[:user][:password])
      sign_in(@user)
      redirect_to root_path, alert: "Logado com sucesso!"
    else
      redirect_to root_path, alert: "Senha invalida!"
    end
  end

  private

  def get_document_type(params)
    user = nil
    if params[:documento].length == 11
      puts "user"
      user = User.find_for_authentication(cpf: params[:documento])
    elsif params[:documento].length == 14
      puts "admin"
      user = Admin.find_for_authentication(cnpj: params[:documento])
    end
  end

end
