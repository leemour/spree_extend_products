class CreateSpreeCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_collections do |t|
      t.string :name
      t.integer :kind
      t.integer :products_count
      t.string :permalink

      t.timestamps
    end
  end
end
