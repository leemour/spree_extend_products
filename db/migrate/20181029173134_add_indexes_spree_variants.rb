class AddIndexesSpreeVariants < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    i%[gtin language age parts_count material].each do |field|
      add_index :spree_variants, field, algorithm: :concurrently
    end
  end
end
