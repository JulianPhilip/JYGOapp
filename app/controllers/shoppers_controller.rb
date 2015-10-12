class ShoppersController < ApplicationController
  before_action :authenticate_user!

  def index

  search = {
    # date: params[:date].to_date,
    location: current_user.full_street_address,
  }

  @shoppers = Shopper.search(search).map(&:shopper).compact
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

  def show_all
    @shoppers = Shopper.all
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
