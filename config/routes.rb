Rails.application.routes.draw do

  #esto para tocar el controlador de devis	
  devise_for :users #, controllers: {registrations: 'registrations'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  #el resource te da rutas que puedes usar
  resources :images

  resources :perfil
  #con el get to lo armas la ruta de pecho
  #get "/perfil", to: "perfil#perfil_edit"
end
