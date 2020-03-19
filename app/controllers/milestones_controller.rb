class MilestonesController < ApplicationController
  before_action :find_milestone, only: %i(edit update)
  def edit
  end

  def update
    @milestone.update(milestone_params)
    if @milestone.order == 1
      @milestone.processing_time == 0
    else
      @previous_milestone = @milestone.find_by(order: @milestone.oder - 1)
      @milestone.processing_time = @milestone.milestone_date - @previous_milestone.milestone_date
    end
      redirect_to tasks_path
  end

  private

  def find_milestone
    @milestone = Milestone.find(params[:id])
  end

  def milestone_params
    params.require(:milestone).permit(:milestone_date, :achieved, :processing_time)
  end
end
