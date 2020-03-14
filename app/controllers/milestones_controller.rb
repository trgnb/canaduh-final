class MilestonesController < ApplicationController
  before_action :find_milestone, only: %i(edit update)

  def index
    @user_type = current_user.user_type
    @milestone_path = current_user.path_type
    @milestones = current_user.milestones
  end

  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.user = current_user
    if @milestone.save!
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @milestone.update(milestone_params)
    redirect_to tasks_path
  end

  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end

  def milestone_params
    params.require(:milestone).permit(:milestone_date, :milestone_title, :milestone_path, :completion, :achieved)
  end
end
