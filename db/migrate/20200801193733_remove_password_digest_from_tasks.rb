class RemovePasswordDigestFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :Password_digest, :string
  end
end
