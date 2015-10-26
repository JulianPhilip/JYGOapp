class AvailabilityPolicy < ApplicationPolicy
  def initialize
    @user = current_user
    @availability = availability
  end
  def index?
    user.username? || user.firstname? || user.lastname? || user.address?|| user.city?|| user.zip_code? || user.phone_number?
  end
end
