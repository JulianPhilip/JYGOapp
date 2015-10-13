class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :shopper
  has_many :ordered_products

  accepts_nested_attributes_for :ordered_products
end
