class ServicesController < ApplicationController
  def index
    @reviews = Review.all
    if params[:query].present?
      @services = Service.search_by_title(params[:query])
    else
      @services = Service.all
    end
  end

  def new
    @service = Service.new
  end

  def create
    # @user = User.find(params[:user_id])
    @service = Service.new(params.require(:service).permit(:service_type, :description, :price))
    @service.user = current_user
    if @service.save!
      redirect_to dashboard_path
    else
      redirect_to(services_path)
    end
  end

  def show
    set_service
    @appointment = Appointment.new
    @average = average(@service)
  end

  def edit
    set_service
  end

  def update
    set_service
    @service.update(params.require(:service).permit(:service_type, :description, :price))
    redirect_to(service_path)
  end

  def destroy
    set_service
    @service.destroy
    redirect_to(services_path)
  end

  def average(service)
    if service.reviews.count.zero?
      'not rated'
    else
      sum = 0
      service.reviews.each do |review|
        sum += review.rating
      end
      sum / service.reviews.count
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end
end
