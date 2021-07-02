Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  post "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/clowns" => "clowns#index"
  get "/clowns/:id" => "clowns#show"
  post "/clowns" => "clowns#create"
  post "/clowns/:id" => "clowns#update"
  delete "/clowns/:id" => "clowns#destroy"

  get "/bookings" => "bookings#index"
  get "/bookings/:id" => "bookings#show"
  post "/bookings" => "bookings#create"
  post "/bookings/:id" => "bookings#update"
  delete "/bookings/:id" => "bookings#destroy"
end
