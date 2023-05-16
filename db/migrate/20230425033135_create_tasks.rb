class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_comment
      t.text :detail
      t.timestamp :expiry_date
      t.integer :priority
      t.string :status
      t.string :label
      t.integer :user_id

      t.timestamps
    end
  end
end
