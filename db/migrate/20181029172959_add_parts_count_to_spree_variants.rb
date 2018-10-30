class AddPartsCountToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :parts_count, :integer
  end
end
