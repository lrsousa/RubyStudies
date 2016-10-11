class SessionsController < Devise::SessionsController

    def new
        super
    end

    def create

        if params[:documento].length == 11
            puts "LOGIN COM CPF"
        elsif params[:documento].length == 14
            puts "LOGIN COM CNPJ"
        end

    end

end
