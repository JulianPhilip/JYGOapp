class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
  end

  def create
    shopper = Shopper.find(params[:shopper_id])
    date = params[:date]
    @order = Order.create(shopper: shopper, date: date)

    redirect_to @order
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
