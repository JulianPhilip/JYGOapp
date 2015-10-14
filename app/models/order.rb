class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :shopper
  has_many :ordered_products
  has_many :products, through: :ordered_products
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :ordered_products

  def min_price_sum
    ordered_products.reduce(0) do |acc, op|
      acc + op.min_price
    end
  end
  def max_price_sum
    ordered_products.reduce(0) do |acc, op|
      acc + op.max_price
    end
  end
end
