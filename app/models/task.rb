class Task < ApplicationRecord
    belongs_to :user#userとTaskの一対多を明記
    #Tasklist用バリデーション
    validates :content, presence: true, length: { maximum: 255 }
    validates :status, presence: true, length: { maximum: 10 }
end
