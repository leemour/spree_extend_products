class AddDeletedAtToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_brands, :deleted_at, :datetime
  end
end
