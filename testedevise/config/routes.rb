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


=begin

<ActionController::Parameters {"utf8"=>"✓",
"authenticity_token"=>"T98v7Z2FXfI4jQfGnbj1xngL+Ph/LGcURuIsd7PbE5dafoQJUKC1QVixFUmsORuTXxjs4dVc+s0bwRMv4fwwKQ==",
  "user"=>{
    "cpf"=>"12345678912",
    "password"=>"123123",
    "remember_me"=>"0"
  },
"commit"=>"Log in",
"controller"=>"users/sessions",
"action"=>"create"} permitted: false>

<ActionController::Parameters {"utf8"=>"✓",
  "authenticity_token"=>"+pc03smbez3wrsbeXALlHE26ZVaVfFvhq/auSmTW47dYk04gik9QMQo+/bfCQrxhk0gdNDHPYgDHka9t52Xc3Q==",
  "documento"=>"12345678912",
    "user"=><ActionController::Parameters {
      "password"=>"123123",
      "remember_me"=>"0",
      "cpf"=>"12345678912"
    } permitted: false>,
  "commit"=>"Log in",
  "controller"=>"sessions",
  "action"=>"create"} permitted: false>


=end
