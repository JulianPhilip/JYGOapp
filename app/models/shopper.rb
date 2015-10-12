class Shopper < ActiveRecord::Base
  belongs_to :user
  has_many :availabilities
  has_many :orders
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

    def self.search(query)
    users = User.near(query[:location], 3)
    #Availabilities.where("availabilities.date = ? ", query[:date].to_date)

    # Availability.where("availabilities.date = ? ", query[:date].to_date)
    #Appartment.near('Antwerp').where("guest_capacity <= ?", 3).joins(:availabilities).where("availabilities.start_date <= ? AND availabilities.end_date >= ?", Date.new(2015,7,2), Date.new(2015,7,14))
    end

  def self.current
    where(user: current_user).first
  end
end

