Rails.application.routes.draw do

  # localhost:3000/    - DEFAULT ROUTE
  root to: 'home#index'

  resources :posts

  devise_for :users

  resources :photos do
  	member do
      put "like", to: "photos#upvote"
      put "dislike", to: "photos#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
