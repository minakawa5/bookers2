Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get "/homes/about" => "homes#about", as: "about"

  resources :bookers, only: [:new, :index, :show, :edit]
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
