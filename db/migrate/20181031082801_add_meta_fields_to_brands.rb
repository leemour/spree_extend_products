class AddMetaFieldsToBrands < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_brands, :meta_title, :string
    add_column :spree_brands, :meta_description, :string
    add_column :spree_brands, :meta_keywords, :string
  end
end
