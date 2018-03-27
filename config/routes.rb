Rails.application.routes.draw do

  root 'posts#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    collection do
      get 'select_tag'
    end
  end
  resources :tag_managements, only: [:new, :create]
end
