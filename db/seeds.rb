# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Kubilay')
User.create(name: 'Marios')

Post.create(title: 'This is title Test', body: 'This is test body for post 1', user_id: 1)
Post.create(title: 'This is title Test2', body: 'This is test body for post 2', user_id: 2)