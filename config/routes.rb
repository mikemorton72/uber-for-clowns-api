Rails.application.routes.draw do
  # bookings
  get "/bookings" => "bookings#index"
  post "/bookings" => "bookings#create"

  # users
  post "/users" => "users#create"
  get "/users" => "users#index" # order by most bookings

  #clowns
  get "/clowns" => "clowns#index" # order by most bookings
  
  # sessions
  post "/sessions" => "sessions#create"

end
