class ReplaceVariantCountryWithCountryId < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_variants, :country, index: true,
      foreign_key: { to_table: :spree_countries }
  end
end
