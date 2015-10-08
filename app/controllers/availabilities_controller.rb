class AvailabilitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    current_shopper = Shopper.where(user: current_user).first
    if(current_shopper).nil?
      redirect_to new_shopper_path
    else
      @availabilities = current_shopper.availibilities
    end
  end

  def show
    current_shopper = Shopper.where(user: current_user).first
    @availability = current_shopper.availability
  end

  def new
    @availability = Availability.new
  end

  def create
    current_shopper = Shopper.where(user: current_user).first
    @availability = current_shopper.create_shopper(availability_params)
    redirect_to availabilities_show_path(@availability)
  end

  def edit
    current_shopper = Shopper.where(user: current_user).first
    @availability = current_shopper.availability
  end

  def update
    current_shopper = Shopper.where(user: current_user).first
    @shopper = current_shopper.availability.update(availability_params)
    redirect_to availabilities_show_path(@availability)
  end

  def delete
    current_shopper = Shopper.where(user: current_user).first
    @availability.destroy
  end

  private

  def availability_params
    params.require(:availability).permit(:date, :beginning_hour, :ending_hour, :acceptation_auto)
  end

end
