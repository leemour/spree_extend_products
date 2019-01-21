class AddIndexToAuthors < ActiveRecord::Migration[5.1]
  disable_ddl_transaction!

  def change
    add_index :spree_authors, :full_name, algorithm: :concurrently
  end
end
