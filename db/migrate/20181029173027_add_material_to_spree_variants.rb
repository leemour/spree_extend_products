class AddMaterialToSpreeVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :material, :integer
  end
end
