Rails.application.routes.draw do
  # bookings
  get "/bookings" => "bookings#index"
  post "/bookings" => "bookings#create"

  # users
  post "/users" => "users#create"
  get "/users" => "users#index" # order by most active

  #clowns (most popular)
  get "/clowns" => "clowns#index"
  
  # sessions
  post "/sessions" => "sessions#create"

end
