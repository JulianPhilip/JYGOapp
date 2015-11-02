class ReviewsController < ApplicationController
  before_action :find_order, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = @order.reviews.build(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to orders_path, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def find_order
      @order = Order.find(params[:order_id])
  end
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
