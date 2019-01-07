class AddCollectionIdToSpreeProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :spree_products, :collection, index: true,
      foreign_key: { to_table: :spree_collections }
  end
end
