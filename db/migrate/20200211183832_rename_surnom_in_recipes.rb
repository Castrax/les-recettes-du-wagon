class RenameSurnomInRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :surnom, :batch_name
  end
end
