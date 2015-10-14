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
    @order = Order.create(shopper: shopper, date: date)

    redirect_to edit_order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
    @products = Product.all
    @categories = Product.categories
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to edit_order_path(@order)
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit(ordered_products_attributes: [:product_id, :quantity])
  end
end
