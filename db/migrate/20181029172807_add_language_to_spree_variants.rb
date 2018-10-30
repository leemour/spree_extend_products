class AddLanguageToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :language, :integer
  end
end
