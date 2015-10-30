class AvailabilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :profile_check
  before_action :current_user_shopper

  def index
    current_shopper = Shopper.where(user: current_user).first
    if(current_shopper).nil?
      redirect_to new_shopper_path
    else
      @availabilities = current_shopper.availibilities
    end
  end

  def show
    @current_shopper = Shopper.where(user: current_user).first
    @availability = Availability.find(params[:id])
  end

  def new
    @availability = Availability.new
  end

  def create
    current_shopper = Shopper.where(user: current_user).first
    @availability = current_shopper.availabilities.create(availabilities_params)
    redirect_to @availability
  end

  def edit
    current_shopper = Shopper.where(user: current_user).first
    @availability = current_shopper.availability
  end

  def update
    current_shopper = Shopper.where(user: current_user).first
    @shopper = current_shopper.availability.update(availabilities_params)
    redirect_to availabilities_path(@availability)
  end

  def delete
    current_shopper = Shopper.where(user: current_user).first
    @availability.destroy
  end

  private


  def availabilities_params
    params.require(:availability).permit(:date)
  end

  def profile_check
     cu = current_user
    if cu.username?||cu.firstname?||cu.lastname?||cu.address?||cu.city?||cu.zip_code?||cu.phone_number?
    else
      redirect_to edit_info_path
      flash[:alert] = "Oups! Avez-vous bien remplis votre profil?"
    end
  end

  def current_user_shopper
    current_shopper = Shopper.where(user: current_user).first
    if(current_shopper).nil?
      redirect_to new_shopper_path
    end
  end
end
