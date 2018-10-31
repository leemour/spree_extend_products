class AddCountryIdToAuthors < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_authors, :country, index: true,
      foreign_key: { to_table: :spree_countries }
  end
end
