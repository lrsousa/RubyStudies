class HomeController < ApplicationController

    def index
        if current_user
            puts "USUARIOOOOOOOOOOOOOOOO"
        elsif current_admin
            puts "ADMINNNNNNNNNNNNNNNNNN"
        end
    end

end
