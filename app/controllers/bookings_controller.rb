class BookingsController < ApplicationController

  def dashboard
    @bookings = Booking.where(user: current_user)
    @queens = Queen.where(user: current_user)
    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @queen = Queen.find(params[:queen_id])
    @booking.user = current_user
    @booking.queen = @queen
    if @booking.save
      flash[:success] = 'Booking created successfully. Party Bitch!'
      redirect_to dashboard_path
    else
      render "queens/show", status: :unprocessable_entity
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :location)
  end

end
