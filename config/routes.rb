Rails.application.routes.draw do
  root 'home#index'
  get 'home/list' => 'home#list', as: :list
  get 'home/like' => 'home#like', as: :like
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
