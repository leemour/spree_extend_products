class AddMaterialToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :material, :integer
  end
end
