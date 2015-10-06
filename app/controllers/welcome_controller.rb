class WelcomeController < ApplicationController
  def index
  end
  def available
  end
  def sorry
  end

  def not_available
    if shopper_available? == true
      redirect_to available_path
    else
      redirect_to sorry_path
    end
  end

  def shopper_available?
    params[:zip_code] == "12340"
  end
end
