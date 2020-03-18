class TasksController < ApplicationController
  before_action :find_task, only: %i(edit update destroy mark_as_done add_to_checklist)
  before_action :set_admin, only: %i(index add_to_checklist)
  before_action :set_path, only: %i(index add_to_checklist)

  def index
    # USER #
    @user_type = current_user.user_type

    # TASKS #
    @tasks = current_user.tasks.order('created_at asc')
    @user_tasks = @tasks.where(recommended_task: false)
    @high_priority_tasks = @user_tasks.filter do |task|
      task.priority == "high"
    end

    @medium_priority_tasks = @user_tasks.filter do |task|
      task.priority == "medium"
    end
    @low_priority_tasks = @user_tasks.filter do |task|
      task.priority == "low"
    end

    # RECOMMENDED TASKS #
    @recommended_tasks = @tasks.where(recommended_task: true)

    # MILESTONES #
    @milestones = current_user.milestones.order(:order)
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
    redirect_to tasks_path
  end

  def add_to_checklist
    @task.recommended_task = false
    @task.priority = "low"
    @task.save
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:task_name, :task_status, :priority, :user_id, :recommended_task)
  end

  def set_admin
    @admin = User.find_by_email("admin@test.com")
    @admin.path_type = current_user.path_type
    @admin.id = current_user.id
  end

  def set_path
    @task_path = current_user.path_type
    @milestone_path = current_user.path_type
  end
end
