Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get 'users/show'
  get 'users/edit'
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :index, :show, :edit, :create] do
  end
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
