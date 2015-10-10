class Shopper < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  validates :default_radius, presence: false
  validates :avg_rating_shopper, presence: false
  validates :nb_exec_orders, presence: false
  validates :nb_due_orders, presence: false
  validates :total_com, presence: false
  validates :seniority, presence: false
  validates :availibility, presence: false
  validates :accept_auto, presence: false
  validates :elearning, presence: false

  def self.enough_in_zip_code?(zip_code)
    Shopper.joins(:user).where(users: {zip_code: zip_code}).count > 9
  end

  def self.current
    where(user: current_user).first
  end
end

