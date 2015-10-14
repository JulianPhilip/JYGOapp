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
    # send mail
    @order = Order.create(shopper: shopper, date: date, user: current_user)
    UserMailer.order_confirmation_shopper(@order).deliver
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
    UserMailer.order_confirmation_user(@order).deliver

    redirect_to edit_order_path(@order)
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to order_url, notice: 'The order was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(ordered_products_attributes: [:product_id, :quantity])
  end
end
