class DashboardController < ApplicationController

  def listagem
    @users = User.page(params[:page])
  end

end
