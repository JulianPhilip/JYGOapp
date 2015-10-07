class Shopper < ActiveRecord::Base
  belongs_to :user

  def self.enough_in_zip_code?(zip_code)
    Shopper.joins(:user).where(users: {zip_code: zip_code}).count > 9
  end
end