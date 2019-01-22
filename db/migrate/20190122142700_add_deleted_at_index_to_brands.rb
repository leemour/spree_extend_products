class AddDeletedAtIndexToBrands < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_index :clients, :deleted_at, concurrently: true
  end
end
