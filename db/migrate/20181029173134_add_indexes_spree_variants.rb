class AddIndexesSpreeVariants < SpreeExtension::Migration[5.1]
  disable_ddl_transaction!

  def change
    %i[gtin language parts_count material country].each do |field|
      add_index :spree_variants, field, algorithm: :concurrently
    end
  end
end
