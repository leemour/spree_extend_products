class AddAgeToSpreeVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :age, :integer
  end
end
