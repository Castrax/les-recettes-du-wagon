class AddColumnsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :step1, :string
    add_column :recipes, :step2, :string
    add_column :recipes, :step3, :string
    add_column :recipes, :step4, :string
    add_column :recipes, :step5, :string
    add_column :recipes, :step6, :string
    add_column :recipes, :step7, :string
    add_column :recipes, :step8, :string
    add_column :recipes, :step9, :string
    add_column :recipes, :step10, :string
    add_column :recipes, :step11, :string
    add_column :recipes, :step12, :string
    add_column :recipes, :step13, :string
    add_column :recipes, :step14, :string
    add_column :recipes, :step15, :string
  end
end
