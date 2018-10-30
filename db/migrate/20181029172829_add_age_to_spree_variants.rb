class AddAgeToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :age, :integer
  end
end
