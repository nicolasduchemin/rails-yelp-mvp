Rails.application.routes.draw do
  resources :restaurants do
    collection do                       # collection => no restaurant id in URL
      get 'top', to: 'restaurants#top'  # RestaurantsController#top
    end

    member do
      get 'chef', to: 'restaurant#chef'
  end

    resources :reviews, only: [ :new, :edit, :create ]
  end

    resources :reviews, only: [ :show, :edit, :update, :destroy ]
  end
