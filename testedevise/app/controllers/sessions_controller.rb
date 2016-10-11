class SessionsController < Devise::SessionsController

  def new
    super
  end

  def create

    new_param = create_new_hash! params

    puts new_param.inspect



  end

  private

  def create_new_hash!(params)
    new_param = {"utf8": params[:utf8],
      "authenticity_token": params[:authenticity_token],
      "user": {
        "password": params[:user][:password],
        "remember_me": params[:user][:remember_me],
      },
      "#{get_document_type params}": params[:documento],
      "commit": params[:commit]
    }
  end

  def get_document_type(params)
    if params[:documento].length == 11
      puts "LOGIN COM CPF"
      "cpf"
    elsif params[:documento].length == 14
      puts "LOGIN COM CNPJ"
      "cnpj"
    end
  end

end
