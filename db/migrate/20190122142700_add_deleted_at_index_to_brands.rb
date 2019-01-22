class AddDeletedAtIndexToBrands < ActiveRecord::Migration[5.1]
  disable_ddl_transaction!

  def change
    add_index :spree_brands, :deleted_at, algorithm: :concurrently
  end
end
