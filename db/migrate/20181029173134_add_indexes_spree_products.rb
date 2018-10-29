class AddIndexesSpreeProducts < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_index :spree_products, :kind, algorithm: :concurrently
  end
end
