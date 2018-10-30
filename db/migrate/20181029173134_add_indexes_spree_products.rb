class AddIndexesSpreeProducts < SpreeExtension::Migration[5.1]
  disable_ddl_transaction!

  def change
    add_index :spree_products, :kind, algorithm: :concurrently
  end
end
