class ChangeDatatypeUserNameOfTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :user_name, :string
  end
end
