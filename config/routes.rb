Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
  resources :search,  only: [:index, :show]

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :items
    end
  end

end
