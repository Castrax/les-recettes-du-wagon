class AddColumnTotalTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :total_time, :time
  end
end
