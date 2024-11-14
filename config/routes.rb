Rails.application.routes.draw do
  # Define routes for the calculations controller
  resources :calculations, only: [:new, :create]

  # Set the root path to the new action
  root 'calculations#new'
  
  get 'calculations/show'
end