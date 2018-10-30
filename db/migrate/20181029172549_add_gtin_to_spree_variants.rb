class AddGtinToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :gtin, :string
  end
end
