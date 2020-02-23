Rails.application.routes.draw do

  get 'purchases/show'
  get 'purchases/index'
#   get 'traveler_segments/index'
#   get 'traveler_segments/show'
#   get 'travelers/index'
#   get 'travelers/show'
#   get 'segments/index'
#   get 'segments/show'
#   get 'itineraries/index'
#   get 'itineraries/show'

    concern :paginatable do
        get '(page/:page)', action: :index, on: :collection, as: ''
    end

    namespace :api do
        namespace :v1 do
             
            resources :users, only: [:create, :update, :destroy]
            post '/login', to: 'auth#create'
            get '/profile', to: 'users#profile'

            resources :flight_offers, only: [:index, :show], concerns: :paginatable
            # resources :flight_offers, only: [:show]

            # resources :flight_offers, only: [:index, :show] do
            #     resources :itineraries, only: [:index, :show] do
            #         resources :segments, only: [:index, :show]
            #     end
            #     resources :travelers, only: [:index, :show] do
            #         resources :traveler_segments, only: [:index, :show]
            #     end
            # end

        end
    end

end

