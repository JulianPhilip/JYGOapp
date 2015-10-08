class WelcomeController < ApplicationController


  def index
  end

  def available
  end

  def sorry
  end

  def not_available
    if Shopper.enough_in_zip_code?(params[:zip_code])
      redirect_to available_path
    else
      redirect_to sorry_path
    end
  end

end
