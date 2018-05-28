Rails.application.routes.draw do

  root 'pokemons#index'

  resources :pokemons, only: [:index, :new, :create, :show, :destroy, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
