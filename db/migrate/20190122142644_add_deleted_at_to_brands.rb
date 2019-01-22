class AddDeletedAtToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :deleted_at, :datetime
  end
end
