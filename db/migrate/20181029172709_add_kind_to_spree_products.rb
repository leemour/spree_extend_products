class AddKindToSpreeProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_products, :kind, :integer
  end
end
