Rails.application.routes.draw do
  root to: "resistor_readings#index"

  resources :resistor_readings, only: [:index, :create]
end
