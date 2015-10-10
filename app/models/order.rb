class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :shopper
  has_many :ordered_product
end
