class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # USER #
    @appointments = current_user.appointments

    # ADVISOR #
    @services = current_user.services
    @advisor_appointments = current_user.advisor_appointments
  end

  def profile
    @user = current_user
    @email = current_user.email
    @first_name = current_user.first_name
    @last_name = current_user.last_name
    @username = current_user.username
    @user_type = current_user.user_type
    @location = current_user.location
    @bio = current_user.user_bio
    @specialty = current_user.specialty
  end

  def destroy
    @current_user_notifications = Notification.where(user_id: current_user.id)
    @current_user_notifications.destroy_all
    redirect_to dashboard_path
  end
end
