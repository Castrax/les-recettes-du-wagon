class RemoveTotalTimes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :total_time
  end
end
