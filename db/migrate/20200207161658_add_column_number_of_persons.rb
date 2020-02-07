class AddColumnNumberOfPersons < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :number_of_persons, :integer
  end
end
