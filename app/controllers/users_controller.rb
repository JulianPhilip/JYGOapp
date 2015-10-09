class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user.update(user_params)
    redirect_to '/users/:id'
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :city, :zip_code, :phone_number, :address, :date_of_birth, :picture)
  end

  def location
    [:address, :city, :zipcode].joins(",")
  end



end
