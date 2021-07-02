class ClownsController < ApplicationController
  before_action :authenticate_user
  def index
    clowns = Clown.all
    clowns = clowns.sort_by {|clown| clown.bookings.count}.reverse
    render json: clowns 
  end
end
