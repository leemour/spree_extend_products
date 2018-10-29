class AddGtinToSpreeVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :gtin, :string
  end
end
