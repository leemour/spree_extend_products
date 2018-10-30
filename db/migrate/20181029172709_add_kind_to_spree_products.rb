class AddKindToSpreeProducts < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_products, :kind, :integer
  end
end
