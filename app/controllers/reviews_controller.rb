class ReviewsController < ApplicationController
  before_action :set_service
  before_action :set_user

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.service = @service
    @review.user = @user
    if @review.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def set_user
    @user = current_user
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
