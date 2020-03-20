class TasksController < ApplicationController
  before_action :find_task, only: %i(edit update destroy mark_as_done add_to_checklist)
  before_action :set_path, only: %i(index add_to_checklist)
  before_action :set_milestones, only: %i(index)
  before_action :calculate_average, only: %i(index)

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

    # USER MILESTONES #
    @total_milestones = @milestones.count
    @achieved_milestones = @milestones.where(achieved: true)
    @percent_completion = (@achieved_milestones.count - 1) * (1 / (@total_milestones - 1).to_f)

    # DB MILESTONES #
    @db_milestones = Milestone.where(milestone_path: current_user.path_type)

    # @a = @milestones2.processing_time = @milestones2.milestone_date - @milestones1.milestone_date
    # @b = @milestones3.processing_time = @milestones3.milestone_date - @milestones2.milestone_date
    # @c = @milestones4.processing_time = @milestones4.milestone_date - @milestones3.milestone_date
    # @d = @milestones5.processing_time = @milestones5.milestone_date - @milestones4.milestone_date
    # @e = @milestones6.processing_time = @milestones6.milestone_date - @milestones5.milestone_date
    # @f = @milestones7.processing_time = @milestones7.milestone_date - @milestones6.milestone_date
    # @total_processing_time = @a + @b + @b + @d + @e + @f
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
    @task.save!
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:task_name, :task_status, :priority, :user_id, :recommended_task)
  end

  def set_path
    @task_path = current_user.path_type
    @milestone_path = current_user.path_type
  end

  def set_milestones
    @milestones = current_user.milestones.order(:order)
    @milestones1 = @milestones.find_by(order: 1)
    @milestones2 = @milestones.find_by(order: 2)
    @milestones3 = @milestones.find_by(order: 3)
    @milestones4 = @milestones.find_by(order: 4)
    @milestones5 = @milestones.find_by(order: 5)
    @milestones6 = @milestones.find_by(order: 6)
    @milestones7 = @milestones.find_by(order: 7)
  end

  def calculate_average
  end
end
