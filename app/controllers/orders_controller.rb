class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
    shopper = Shopper.find(params[:shopper_id])
    date = params[:date]
    user = current_user
    @order = Order.create(shopper: shopper, date: date, user: user)

    # send mail
    UserMailer.order_confirmation_shopper(@order).deliver

    redirect_to edit_order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
    @products = Product.all
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    UserMailer.order_confirmation_user(@order).deliver

    redirect_to edit_order_path(@order)
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(ordered_products_attributes: [:product_id, :quantity])
  end
end
