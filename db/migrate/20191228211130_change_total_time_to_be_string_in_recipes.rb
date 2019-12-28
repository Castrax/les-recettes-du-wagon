class ChangeTotalTimeToBeStringInRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :total_time, :string
  end
end
