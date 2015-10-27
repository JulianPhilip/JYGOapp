class Review < ActiveRecord::Base
  belongs_to :order
  validates :content, presence: false
  validates :rating, presence: false

   rails_admin do
    configure :order do
      label 'order of this review: '
    end
  end
end
