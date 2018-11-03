class CreateSpreeAuthors < SpreeExtension::Migration[5.1]
  def change
    create_table :spree_authors do |t|
      t.string :name
      t.string :surname
      t.text :biography
      t.string :permalink
      t.string  :avatar
      t.integer :role, default: 0, null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
