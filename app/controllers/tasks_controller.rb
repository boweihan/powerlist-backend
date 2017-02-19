class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
  end

  # GET /find_user_tasks/user_id=?
  def find_user_tasks
    @tasks = Task.order(end: :asc).where(user_id: params[:user_id])
    render json: @tasks
  end

  # GET /get_category_tasks/category_id=?
  def get_category_tasks
    @tasks = Task.order(end: :asc).where(category_id: params[:category_id])
    render json: @tasks
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:title, :tip, :start, :end, :url, :category, :overdue, :backgroundColor, :order, :user_id, :category_id)
    end
end
