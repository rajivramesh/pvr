Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'index', to: 'home#index'
  get 'search_shows', to: 'home#search_shows'

  resources :favourites do
    collection do
      post 'mark_as_favourite'
    end
  end
end
