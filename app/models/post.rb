class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, length: { in: 5..20 }, presence: true
  validates :body, length: { maximum: 500 }, presence: true
end
