class SearchsController < ApplicationController
  before_action :authenticate_user!
  before_action :profile_check
  # def index
    # @availabilities = Availability.all
    # authorize @availabilities
    # redirect_to searchs_path
    # redirect_to users_path
  # end

  # private

  # def profile_check
  #   cu = current_user
  #   if cu.username?||cu.firstname?||cu.lastname?||cu.address?||cu.city?||cu.zip_code?||cu.phone_number?
  #   else
  #     redirect_to edit_info_path
  #     flash[:alert] = "Oups! Avez-vous bien remplis votre profil?"
  #   end
  # end
end
