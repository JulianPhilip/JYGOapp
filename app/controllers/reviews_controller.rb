class ReviewsController < ApplicationController
  before_action :find_order, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = @order.reviews.build(review_params)
    @rewiew.save
  end

  private
  def find_order
      @order = Order.find(params[:order_id])
  end
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
