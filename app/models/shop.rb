class Shop < ActiveRecord::Base
  has_many :ordered_product
  validates :country, presence: false
  validates :city, presence: false
  validates :zip_code, presence: false
  validates :street_and_number, presence: false
  validates :name, presence: false
  validates :description, presence: false
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
   [street_and_number, zip_code, city, country].compact.join(', ')
  end
end
