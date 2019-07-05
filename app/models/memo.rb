class Memo < ApplicationRecord
  belongs_to :user
  
  #バリデーション
  validates :title, presence: true, length: { maximum: 50 }
end
