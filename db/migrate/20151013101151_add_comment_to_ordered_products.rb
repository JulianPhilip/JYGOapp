class AddCommentToOrderedProducts < ActiveRecord::Migration
  def change
    add_column :ordered_products, :comment, :text
  end
end
