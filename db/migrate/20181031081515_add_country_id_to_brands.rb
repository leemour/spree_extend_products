class AddCountryIdToBrands < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_brands, :country, index: true,
      foreign_key: { to_table: :spree_countries }
  end
end
