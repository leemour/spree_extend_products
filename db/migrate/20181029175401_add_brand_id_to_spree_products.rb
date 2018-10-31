class AddBrandIdToSpreeProducts < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_products, :brand, index: true,
      foreign_key: { to_table: :spree_brands }
  end
end
