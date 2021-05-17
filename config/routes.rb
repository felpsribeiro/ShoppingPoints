Rails.application.routes.draw do
  root "application#index"
  devise_for :funcionarios, path: 'auth'
  resources :troca_produtos
  resources :clientes
  get 'clientes/:id/add', to: 'clientes#add', as: 'add_cliente'
  resources :produtos
  resources :funcionarios
  resources :categorias
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
