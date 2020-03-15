class MilestonesController < ApplicationController
  before_action :find_milestone, only: %i(edit update)

  def index
    @user_type = current_user.user_type
    # @user_milestones = current_user.milestones
    @milestones = Milestone.where(milestone_path: current_user.path_type).order(:order)
    @user_milestones = current_user.milestones
  end

  def edit
  end

  def update
    @milestone.update(milestone_params)
    @milestone.achieved = true
    @milestone.user_id = current_user.id
    redirect_to tasks_path
  end

  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end

  def milestone_params
    params.require(:milestone).permit(:milestone_date)
  end

  # def set_milestones
  #   @milestones = Milestone.where(milestone_path: current_user.path_type).order(:order)
  #   @user_milestones = @milestones.each do |milestone|
  #     milestone.user_id = current_user.id
  #   end
  # end
end
