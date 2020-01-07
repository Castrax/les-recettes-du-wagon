class DeleteNumberPersonsRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :number_persons
  end
end
