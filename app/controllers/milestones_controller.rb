class MilestonesController < ApplicationController
  before_action :find_milestone, only: %i(edit update)

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
    params.require(:milestone).permit(:milestone_date, :achieved)
  end
end
