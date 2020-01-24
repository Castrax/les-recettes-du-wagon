class RemoveMonthFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :month
  end
end
