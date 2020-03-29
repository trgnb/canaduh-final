class RidesController < ApplicationController
  before_action :find_ride, only: %i(show edit update destroy)

  def index
    # RIDE #
    @user_type = current_user.user_type
    @user_path = current_user.path_type
    @all_rides = Ride.all
    @available_rides = @all_rides.where.not(ride_capacity: 0)

    # MAP #
    ## All addresses ##
    @all_addresses = Address.geocoded #returns addresses with coordinates

    # Departure addresses #
    @departure_addresses = @all_addresses.where(name: "departure")

    # Destination Addresses #
    @destination_addresses = @all_addresses.where(name: "destination")

    ## All addresses ##
    @all_addresses = Address.geocoded #returns addresses with coordinates

    ## Markers ##
    @markers = @destination_addresses.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        infowindow: render_to_string(partial: "info_window", locals: { ride_id: location.ride_id, departure_address: @departure_addresses.find_by(ride_id: location.ride_id).address })
      }
    end
  end

  def show
    @all_addresses = Address.geocoded
    @departure_addresses = @all_addresses.where(name: "departure")
    @destination_addresses = @all_addresses.where(name: "destination")
    @booking = Booking.new
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    @ride.departure_address = Address.create(address: params[:ride][:departure_address], name: "departure")
    @ride.destination_address = Address.create(address: params[:ride][:destination_address], name: "destination")
    if @ride.save!
      redirect_to rides_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @ride.update(ride_params)
    redirect_to rides_path
  end

  def destroy
    @ride.destroy
    redirect_to rides_path
  end

  private

  def ride_params
    params.require(:ride).permit(:ride_price, :ride_date, :ride_capacity)
  end

  def find_ride
    @ride = Ride.find(params[:id])
  end
end
