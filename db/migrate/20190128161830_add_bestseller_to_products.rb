class AddBestsellerToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :bestseller, :boolean
    change_column_default :spree_products, :bestseller, false
  end
end
