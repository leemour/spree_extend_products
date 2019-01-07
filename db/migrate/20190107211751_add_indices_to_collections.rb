class AddIndicesToCollections < ActiveRecord::Migration[5.2]
  def change
    add_index :collections, :name
    add_index :collections, :permalink
    add_index :collections, :kind
  end
end
