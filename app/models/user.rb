class User < ApplicationRecord
    before_save { self.email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }#nameのバリデーション
    validates :email, presence: true, length: { maximum: 255 },#emailのバリデーション
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
    has_secure_password#password付きモデルの標準機能
    
    has_many :tasks
end
