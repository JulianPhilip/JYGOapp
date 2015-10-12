class OrderedProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @ordered_product = Ordered_product.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:ordered_product).permit(:product_id, :quantity)
  end

end
