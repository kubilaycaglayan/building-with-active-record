# ==================== User

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts
end

## MIGRATIONS

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
    end
  end
end

# ==================== Post

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
end

class CreatePosts < ActiveRecords::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user
    end
  end
end

# ==================== Comment

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end

class CreateComments < ActiveRecords::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :post
    end
  end
end