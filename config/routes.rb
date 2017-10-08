Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :photos do
  	 member do
    put "like", to: "photos#upvote"
    put "dislike", to: "photos#downvote"
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
