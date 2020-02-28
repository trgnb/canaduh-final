class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    profile_path(resource)
  end

  def after_update_path_for(resource)
    flash[:notice] = "Account succesfully updated"
    profile_path
  end
end
