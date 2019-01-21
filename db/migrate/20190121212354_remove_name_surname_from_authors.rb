class RemoveNameSurnameFromAuthors < ActiveRecord::Migration[5.1]
  def change
    remove_column :spree_authors, :name
    remove_column :spree_authors, :surname
  end
end
