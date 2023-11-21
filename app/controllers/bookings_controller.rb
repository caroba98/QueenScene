class BookingsController < ApplicationController

  def dashboard
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @queen = Queen.find(params[:queen_id])
    @booking.user = current_user
    @booking.queen = @queen
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking created successfully. Party Bitch! '
    else
      render "queens/show", status: :unprocessable_entity
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:date, :location)
  end

end
