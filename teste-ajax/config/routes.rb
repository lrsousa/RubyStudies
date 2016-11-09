Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "usuarios#index"
  put "usuarios/desativar/:id", to: "usuarios#desativar", as: "desativar"
  put "usuarios/ativar/:id", to: "usuarios#ativar", as: "ativar"


end
