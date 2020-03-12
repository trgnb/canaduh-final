class TasksController < ApplicationController
  before_action :find_task, only: %i(edit update destroy mark_as_done)

  def index
    @user_type = current_user.user_type
    @task_path = current_user.path_type
    @tasks = current_user.tasks
    @recommended_tasks = Task.where(task_path: current_user.path_type)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save!
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def mark_as_done
    @task.toggle(:task_status)
    @task.save
    # @task.update(completed: true)
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:task_name, :task_status, :priority)
  end
end
