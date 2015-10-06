class ShopperController < ApplicationController
  before_action :authenticate_user!

  def new
    @shopper = Shopper.new
  end

  def create
    @shopper = User.create(shopper_params)
    redirect_to @shopper
  end

  def show
    @shopper = current_shopper
  end

  def edit
    @shopper = current_shopper
  end

  def update
    @user = current_user.update(user_params)
    redirect_to profile_path
  end


end
