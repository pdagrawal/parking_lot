Rails.application.routes.draw do
  resources :parking_spots, only: [:index]
  resources :vehicles, only: [:index] do
    put :toggle_parking
  end
  root 'parking_spots#index'
end
