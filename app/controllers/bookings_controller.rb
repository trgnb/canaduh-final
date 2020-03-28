class BookingsController < ApplicationController
  before_action :set_ride, only: %i(new create)

  def new
    @booking = Booking.new
  end

  # def after_sign_in_path_for(resource)
  #   p resource
  # end

  def create
    @booking = Booking.new
    @booking.ride = @ride
    @booking.user = current_user
    @booking.booking_status = 'pending'
    if @booking.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if params[:booking_status]
      @booking = Booking.find(params[:id])
      confirm_or_not_booking
    else
      @booking = Booking.find(params[:booking_id])
      @booking.update(booking_params)
      redirect_to dashboard_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.booking_status == "booked"
      ride = Ride.find_by_id(@booking.ride.id)
      ride.ride_capacity = ride.ride_capacity + 1
      ride.save!
    end
    @booking.destroy
    redirect_to dashboard_path
  end

  def confirm_or_not_booking
    @booking.booking_status = params[:booking_status]
    if @booking.booking_status == "booked"
      ride = Ride.find_by_id(@booking.ride.id)
      ride.ride_capacity = ride.ride_capacity - 1
      ride.save!
    end
    redirect_to dashboard_path if @booking.save!
  end

  private

  def set_ride
    @ride = Ride.find(params[:ride_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_status)
  end
end
