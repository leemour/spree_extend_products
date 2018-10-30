class AddAuthorIdToSpreeProducts < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_variants, :author, index: true,
      foreign_key: { to_table: :spree_authors }
  end
end
