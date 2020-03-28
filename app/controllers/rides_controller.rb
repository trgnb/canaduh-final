class RidesController < ApplicationController
  before_action :find_ride, only: %i(show edit update destroy)

  def index
    # RIDE #
    @user_type = current_user.user_type
    @user_path = current_user.path_type
    @all_rides = Ride.all
    @available_rides = @all_rides.where.not(ride_capacity: 0)

    # MAP #
    # Departure addresses #
    @available_rides_departures = []
      @available_rides.each do |ride|
      @available_rides_departures << ride.departure_address
    end

    # Destination Addresses #
    @available_rides_destinations = []
      @available_rides.each do |ride|
        @available_rides_destinations << ride.destination_address
      end

    ## All addresses ##
    @all_addresses = Address.geocoded #returns addresses with coordinates

    ## Markers ##
    @markers = @available_rides_destinations.map do |address|
      {
        lat: address.latitude,
        lng: address.longitude
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    @ride.departure_address = Address.create(address: params[:ride][:departure_address])
    @ride.destination_address = Address.create(address: params[:ride][:destination_address])
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
