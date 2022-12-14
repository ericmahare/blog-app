Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  
  root "users#index"
 
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index new create show destroy] do
    end
  end

  resources :posts, only: [:new, :create, :update, :destroy] do
    resources :comments
    resources :likes
  end

  namespace :api do 
    namespace :v1 do
      resources :users, only: %i[index] do
        resources :posts, only: %i[index show] do
          resources :comments, only: %i[new create] do
          end
        end
      end
    end
  end
  
  if Rails.env.development? 
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end 
end
