class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.integer :number_persons
      t.string :difficulty
      t.string :cost
      t.string :preparation
      t.integer :total_time
      t.string :season
      t.string :ustensils

      t.timestamps
    end
  end
end
