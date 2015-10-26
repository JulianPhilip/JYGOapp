class SearchsController < ApplicationController
  before_action :authenticate_user!
  def index
    # @availabilities = Availability.all
    # authorize @availabilities
    # redirect_to searchs_path
    # redirect_to users_path
  end
end
