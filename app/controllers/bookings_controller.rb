class BookingsController < ApplicationController
  before_action :authenticate_user
  def create
    clown_id = Clown.find_by(name: params[:clown_name]).id
    booking = Booking.new(
      clown_id: clown_id,
      user_id: current_user.id
    )
    if booking.save
      render json: booking
    else
      render json: {errors: booking.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def index
    # 
  end
end
