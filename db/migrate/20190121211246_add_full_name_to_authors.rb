class AddFullNameToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_authors, :full_name, :string
  end
end
