Rails.application.routes.draw do

    # concern :paginatable do
    #     get '(page/:page)', action: :index, on: :collection, as: ''
    # end
    
    # , concerns: :paginatable
    
    namespace :api do
        namespace :v1 do
            
            resources :users, only: [:create, :update, :destroy]
            post '/login', to: 'auth#create'
            get '/profile', to: 'users#profile'
            resources :flight_offers, only: [:index, :show]
            post '/flight_offers', to: 'flight_offers#create'

            delete '/favorites', to: 'favorites#destroy'
            delete '/purchases', to: 'purchases#destroy'
            resources :purchases, only: [:create, :delete]
            resources :favorites, only: [:create, :destroy]
            post '/queries/test', to: 'queries#test'
            resources :queries, only: [:create, :show]
            resources :responses, only: [:show]
            
        end
    end

end

