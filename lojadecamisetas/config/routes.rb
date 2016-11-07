Rails.application.routes.draw do

  post "/produtos", to:"produtos#create"
  get "/produtos/new", to:"produtos#new"
  root "produtos#index"
end
