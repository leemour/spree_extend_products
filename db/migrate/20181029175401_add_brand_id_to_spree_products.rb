class AddBrandIdToSpreeProducts < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_variants, :brand, index: true,
      foreign_key: { to_table: :spree_brands }
  end
end
