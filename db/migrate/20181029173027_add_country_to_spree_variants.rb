class AddCountryToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :country, :integer
  end
end
