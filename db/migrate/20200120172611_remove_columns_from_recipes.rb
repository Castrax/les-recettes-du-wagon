class RemoveColumnsFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cached_votes_total
    remove_column :recipes, :cached_votes_score
    remove_column :recipes, :cached_votes_up
    remove_column :recipes, :cached_votes_down
    remove_column :recipes, :cached_weighted_score
    remove_column :recipes, :cached_weighted_total
    remove_column :recipes, :cached_weighted_average
    remove_column :recipes, :rating
  end
end
