class OrderedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :shop
  validates :origin, presence: false
  validates :price, presence: false

  def min_price
    if product
      product.min_price*quantity
    else
      0
    end
  end

  def max_price
    if product
      product.max_price*quantity
    else
      0
    end
  end
  rails_admin do
    configure :order do
      label 'ID of this ordered product: '
    end
  end

  rails_admin do
    configure :product do
      label 'Nature of this ordered product: '
    end
  end

  rails_admin do
    configure :shop do
      label 'Origin of this ordered product: '
    end
  end
end

