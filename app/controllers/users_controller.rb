class UsersController < ApplicationController
  def update
    @user = current_user
    @user.update_attributes(user_params)
  end

  def edit
    @user = current_user
  end

  private

  def user_params
    params.require(:users).permit(:first_name, :last_name, :email, :user_type)
  end
end
