Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'users/registrations'
  }

  devise_for :admins, controllers: {
    sessions: 'sessions',
    registrations: 'admins/registrations'
  }

  root 'home#index'
end
