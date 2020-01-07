class AddKitchenTypeToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :kitchen_type, :string
  end
end
