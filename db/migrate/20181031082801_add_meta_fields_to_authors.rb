class AddMetaFieldsToAuthors < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_authors, :meta_title, :string
    add_column :spree_authors, :meta_description, :string
    add_column :spree_authors, :meta_keywords, :string
  end
end
