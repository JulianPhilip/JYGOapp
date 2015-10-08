class ShoppersController < ApplicationController
  before_action :authenticate_user!

  def index
  search = {
    date: Date.parse(params[:date]),
  }
  @shoppers = Availability.search(search)
  end

  def new
    @shopper = Shopper.new
  end

  def create
    @shopper = current_user.create_shopper(shopper_params)
    redirect_to shopper_path(@shopper)
  end

  def show
    @shopper = current_user.shopper
  end

  def edit
    @shopper = current_user.shopper
  end

  def update
    @user = current_user.shopper.update(shopper_params)
    redirect_to profile_path
  end

  private

  def shopper_params
    params.require(:shopper).permit(:default_radius)
  end
end
