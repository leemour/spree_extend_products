class CreateSpreeBrands < SpreeExtension::Migration[5.1]
  def change
    create_table :spree_brands do |t|
      t.string :name
      t.string :permalink
      t.string :logo
      t.text :description
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
