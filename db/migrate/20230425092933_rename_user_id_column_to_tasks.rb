class RenameUserIdColumnToTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :user_id, :user_name
  end
end
