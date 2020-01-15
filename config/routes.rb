Rails.application.routes.draw do
  resources :resistor_readings, only: [:index, :create]
end
