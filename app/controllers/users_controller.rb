class UsersController < ApplicationController
  def update
    @users = User.all
    @user = current_user
    @user.update_attributes(user_params)
    @services = Service.all
    redirect_to dashboard_path
    # redirect_to services_path(current_user, query: current_user.path_type)
  end

  def edit
    @user = current_user
  end

  def show
    @users = User.all
    @user = current_user
    @user.update_attributes(user_params)
  end

  private

  def user_params
    params.permit(:user_type, :path_type, :id)
  end
end
