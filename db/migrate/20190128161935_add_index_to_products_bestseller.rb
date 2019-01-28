class AddIndexToProductsBestseller < ActiveRecord::Migration[5.1]
  disable_ddl_transaction!

  def change
    add_index :spree_products, :bestseller, algorithm: :concurrently
  end
end
