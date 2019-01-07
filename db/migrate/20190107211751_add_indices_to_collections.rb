class AddIndicesToCollections < ActiveRecord::Migration[5.1]
  def change
    add_index :spree_collections, :name
    add_index :spree_collections, :permalink
    add_index :spree_collections, :kind
  end
end
