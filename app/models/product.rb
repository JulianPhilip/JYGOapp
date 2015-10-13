class Product < ActiveRecord::Base
  has_many :ordered_product

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      product = find_by_name(row["name"]) || new
      product.attributes = row.to_hash.slice(*accessible_attributes)
      product.save!
    end
  end
end
