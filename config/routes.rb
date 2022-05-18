Rails.application.routes.draw do
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, except: %i[edit update destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
