Rails.application.routes.draw do
  get 'passengers/new'
  get 'passengers/create'
  get 'bookings/new'
  get 'bookings/show'
  get 'flights/index'
  get 'flights/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources 'flights'
  resources 'bookings'
  root 'flights#index'
end
