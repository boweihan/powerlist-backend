class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # GET /find_category?name=?
  def find_category
    @category = Category.where(name: params[:name]).first
    render json: @category
  end

  # GET /get_category_tasks?id
  def get_category_tasks
    @tasks = Category.where(id: params[:id]).first
    render json: @tasks
  end

  # GET /find_user_categories/user_id=?
  def find_user_categories
    @categories = Category.where(user_id: params[:user_id])
    render json: @categories
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name, :user_id)
    end
end
