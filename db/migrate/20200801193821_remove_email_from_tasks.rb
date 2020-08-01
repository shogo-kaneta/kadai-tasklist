class RemoveEmailFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :Email, :string
  end
end
