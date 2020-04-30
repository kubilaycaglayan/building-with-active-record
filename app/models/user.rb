class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: true
end
