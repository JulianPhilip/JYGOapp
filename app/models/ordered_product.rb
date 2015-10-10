class OrderedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :shop
  validates :origin, presence: false
  validates :price, presence: false
end
