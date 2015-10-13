class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to '/users/:id'
    else
      redirect_to '/edit_info'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :firstname, :lastname, :city, :zip_code, :phone_number, :address, :date_of_birth, :picture, :vin, :boucherie, :charcuterie, :prix, :legume, :fruit, :poisson, :boutique)
  end


  # def location
  #   [:address, :city, :zipcode].joins(",")
  # end

end
