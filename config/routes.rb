Rails.application.routes.draw do
    devise_for :users
  
  resources :articles, param: :slug do
    resources :comments, only: [:create, :destroy], param: :id
  end
  root "articles#index"
end


