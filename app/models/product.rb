class Product < ActiveRecord::Base
  has_many :ordered_product
end
