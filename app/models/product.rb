class Product < ActiveRecord::Base
  has_many :ordered_product

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Product.create! row.to_hash
    end
  end

  def self.categories
    distinct.pluck(:category)
  end
end
