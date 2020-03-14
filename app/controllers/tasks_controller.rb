class TasksController < ApplicationController
  before_action :find_task, only: %i(edit update destroy mark_as_done add_to_checklist)
  before_action :set_admin, only: %i(index add_to_checklist)
  before_action :set_path, only: %i(index add_to_checklist)

  def index
    # USER #
    @user_type = current_user.user_type

    # TASKS #
    @tasks = current_user.tasks
    @high_priority_tasks = @tasks.filter do |task|
      task.priority == "high"
    end
    @medium_priority_tasks = @tasks.filter do |task|
      task.priority == "medium"
    end
    @low_priority_tasks = @tasks.filter do |task|
      task.priority == "low"
    end

    # RECOMMENDED TASKS #
    @recommended_tasks = Task.where(recommended_task: true, task_path: @admin.path_type)

    # MILESTONES #
    @milestones = Milestone.where(milestone_path: current_user.path_type)
    @ordered_list = @milestones.order(:order)
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
    @task.user_id = current_user.id
    @task.recommended_task = false
    @task.save
    redirect_to tasks_path
  end

  # MILESTONES #



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
