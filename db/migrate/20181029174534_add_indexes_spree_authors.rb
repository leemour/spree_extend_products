class AddIndexesSpreeAuthors < SpreeExtension::Migration[5.1]
  disable_ddl_transaction!

  def change
    %i[name surname permalink relation status].each do |field|
      add_index :spree_authors, field, algorithm: :concurrently
    end
  end
end
