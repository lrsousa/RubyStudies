class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true
    devise_group :person, contains: [:user, :admin]
    before_action :authenticate_person!

end
