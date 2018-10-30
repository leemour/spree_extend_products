class AddIndexesSpreeBrands < SpreeExtension::Migration[5.1]
  disable_ddl_transaction!

  def change
    %i[name permalink status].each do |field|
      add_index :spree_brands, field, algorithm: :concurrently
    end
  end
end
