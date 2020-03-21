class TasksController < ApplicationController
  before_action :find_task, only: %i(edit update destroy mark_as_done add_to_checklist)
  before_action :set_path, only: %i(index add_to_checklist)
  before_action :set_milestones, only: %i(index)
  before_action :set_db_milestones, only: %i(index)

  def index
    # USER #
    @user_type = current_user.user_type

    # TASKS #
    @tasks = current_user.tasks.order('updated_at asc')
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

    # DB MILESTONES #
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
    @milestones = current_user.milestones.order(order: :asc)
    @pr_milestones = @milestones.where(milestone_path: "permanent residency")

    ## COMPLETION PERCENT ##
    @total_pr_milestones = @pr_milestones.count
    @achieved_pr_milestones = @pr_milestones.where(achieved: true)
    if @achieved_pr_milestones.count == 0
      @percent_completion = 0
    else
      @percent_completion = (@achieved_pr_milestones.count) * (1 / @total_pr_milestones.to_f)
    end

    ## USER PR PROCESSING TIME ##

    if @achieved_pr_milestones.empty?
      @csq_processing_time = 0

      @pr1_processing_time = 0
      @pr2_processing_time = 0
      @pr3_processing_time = 0
      @pr_processing_time = 0

      @total_pr_processing_time = 0
    else
      @milestone1 = @achieved_pr_milestones.find_by order: 1
      @milestone2 = @achieved_pr_milestones.find_by order: 2
      @milestone3 = @achieved_pr_milestones.find_by order: 3
      @milestone4 = @achieved_pr_milestones.find_by order: 4
      @milestone5 = @achieved_pr_milestones.find_by order: 5
      @milestone6 = @achieved_pr_milestones.find_by order: 6
      @milestone7 = @achieved_pr_milestones.find_by order: 7

      if @milestone1.nil?
      else
        @milestone1_date = @milestone1.milestone_date
      end
      if @milestone2.nil?
      else
        @milestone2_date = @milestone2.milestone_date
      end
      if @milestone3.nil?
      else
        @milestone3_date = @milestone3.milestone_date
      end
      if @milestone4.nil?
      else
        @milestone4_date = @milestone4.milestone_date
      end

      if @milestone5.nil?
      else
        @milestone5_date = @milestone5.milestone_date
      end
      if @milestone6.nil?
      else
        @milestone6_date = @milestone6.milestone_date
      end
      if @milestone7.nil?
      else
        @milestone7_date = @milestone7.milestone_date
      end

      ## CSQ ##
      if @milestone1_date.nil? || @milestone2_date.nil?
        @csq_processing_time = 0
      else
        @milestone2.processing_time = TimeDifference.between(@milestone1_date, @milestone2_date).in_months.round
        @csq_processing_time = @milestone2.processing_time
      end

      ## PR1 ##
      if @milestone4_date.nil? || @milestone5_date.nil?
        @pr1_processing_time = 0
      else
        @milestone5.processing_time = TimeDifference.between(@milestone4_date, @milestone5_date).in_months.round
        @pr1_processing_time = @milestone5.processing_time
      end

      ## PR2 ##
      if @milestone5_date.nil? || @milestone6_date.nil?
        @pr2_processing_time = 0
      else
        @milestone6.processing_time = TimeDifference.between(@milestone5_date, @milestone6_date).in_months.round
        @pr2_processing_time = @milestone6.processing_time
      end

      ## PR3 ##
      if @milestone6_date.nil? || @milestone7_date.nil?
        @pr3_processing_time = 0
      else
        @milestone7.processing_time = TimeDifference.between(@milestone6_date, @milestone7_date).in_months.round
        @pr3_processing_time = @milestone7.processing_time
      end
      ## TOTAL PR ##
      @total_pr_processing_time = @csq_processing_time + @pr1_processing_time + @pr2_processing_time + @pr3_processing_time
    end
  end

  def set_db_milestones
    if current_user.path_type = "permanent residency"
      @db_pr_milestones = Milestone.all.where(milestone_path: current_user.path_type).where.not(processing_time: nil)
      @db_pr_milestones2 = @db_pr_milestones.where(order: 2)
      @db_pr_milestones5 = @db_pr_milestones.where(order: 5)
      @db_pr_milestones6 = @db_pr_milestones.where(order: 6)
      @db_pr_milestones7 = @db_pr_milestones.where(order: 7)

      ## AVERAGE CSQ ##
      @db_csq_processing_time = 0
      @db_pr_milestones2.each do |db_pr_milestone2|
        @db_csq_processing_time += db_pr_milestone2.processing_time
      end
      @av_db_csq_processing_time = @db_csq_processing_time / @db_pr_milestones2.count

      ## AVERAGE PR1 ##
      @db_pr1_processing_time = 0
      @db_pr_milestones5.each do |db_pr_milestone5|
        @db_pr1_processing_time += db_pr_milestone5.processing_time
      end
      @av_db_pr1_processing_time = @db_pr1_processing_time / @db_pr_milestones5.count

      ## AVERAGE PR2 ##
      @db_pr2_processing_time = 0
      @db_pr_milestones6.each do |db_pr_milestone6|
        @db_pr2_processing_time += db_pr_milestone6.processing_time
      end
      @av_db_pr2_processing_time = @db_pr2_processing_time / @db_pr_milestones6.count

      ## AVERAGE PR3 ##
      @db_pr3_processing_time = 0
      @db_pr_milestones7.each do |db_pr_milestone7|
        @db_pr3_processing_time += db_pr_milestone7.processing_time
      end
      @av_db_pr3_processing_time = @db_pr3_processing_time / @db_pr_milestones7.count

      ## AVERAGE PR ##
      @total_av_processing_time = @av_db_csq_processing_time + @av_db_pr1_processing_time + @av_db_pr2_processing_time + @av_db_pr3_processing_time
    else
    end
  end
end
