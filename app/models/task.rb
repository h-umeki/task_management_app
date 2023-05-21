class Task < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "detail", "expiry_date", "id", "label", "priority", "status", "task_comment", "task_name", "updated_at", "user_name"]
    end
    enum status: { "作成": 0, "準備": 1, "進行中": 2, "保留": 3, "完了": 4, "中止": 5 }
end
