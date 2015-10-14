class Review < ActiveRecord::Base
  belongs_to :order
  validates :content, presence: false
  validates :rating, presence: false
end
