json.extract! task, :id, :task_name, :task_comment, :detail, :expiry_date, :priority, :status, :label, :user_name, :created_at, :updated_at
json.url task_url(task, format: :json)
