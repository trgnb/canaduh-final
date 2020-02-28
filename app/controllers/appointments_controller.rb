class AppointmentsController < ApplicationController
  before_action :set_service, only: %i(create)
  # NEW: In the service controller? #
  # GET #
  def new
    @service = Service.find(params[:service_id])
    @appointment = Appointment.new
  end

  def after_sign_in_path_for(resource)
    p resource
  end

  # POST #
  def create
    @appointment = Appointment.new(appointment_params)
    @service = Service.find(params[:service_id])
    @appointment.service = @service
    @appointment.user = current_user
    @appointment.status = 'pending confirmation'
    @appointment.save

    # if @appointment.save
    #   redirect_to dashboard_path
    # else
    #   redirect_to service_path(@service)
    # end
  end

  def update
    if params[:status]
      @appointment = Appointment.find(params[:id])
      confirm_or_not_appointment
    else
      @appointment = Appointment.find(params[:appointment_id])
      @appointment.update(appointment_params)
    end
  end

  def confirm_or_not_appointment
    @appointment.status = params[:status]
    redirect_to dashboard_path if @appointment.save!
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to dashboard_path
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :status, :service_id, :user_id, :appointment_id, :rating)
  end
end
