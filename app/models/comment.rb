class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :post_id, presence: true
  validates :user_id, presence: true
  validates :body, length: { maximum: 50 }, presence: true
end
