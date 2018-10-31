class AddIllustratorIdToSpreeProducts < SpreeExtension::Migration[5.1]
  def change
    add_reference :spree_products, :illustrator, index: true,
      foreign_key: { to_table: :spree_authors }
  end
end
