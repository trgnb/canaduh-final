class BookingsController < ApplicationController
  before_action :set_service, only: %i(new create)

  def new
    @appointment = Appointment.new
  end

  # def after_sign_in_path_for(resource)
  #   p resource
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.ride = @ride
    @booking.booking_status = 'pending confirmation'
    @booking.save

    if @booking.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    if params[:booking_status]
      @booking = Booking.find(params[:id])
      confirm_or_not_booking
    else
      @booking = Booking.find(params[:booking_id])
      @booking.update(booking_params)
    end
  end

  def confirm_or_not_booking
    @booking.booking_status = params[:booking_status]
    redirect_to dashboard_path if @booking.save!
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_ride
    @ride = Ride.find(params[:ride_id])
  end

  def booking_params
    params.require(:appointment).permit(:ride_id, :booking_status)
  end
end
