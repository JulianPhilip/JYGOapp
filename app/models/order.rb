class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :shopper
  has_many :ordered_products
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :ordered_products
end
