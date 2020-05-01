# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['Kubilay','Marios','Jamilia','Teo','David Gilmour', 'Jimmy Page']
names.each do |name|
  User.create(name: name)
end
posts = {
  'Led Zeppelin' => 'Stairway to Heaven',
  'Pink Floyd' => 'Comfortably Numb',
  'Radiohead' => 'Karma Police',
  'Black Sabbath' => 'War Pigs',
  'Black Sabbath' => 'Paranoid',
  'Metallica' => 'Enter Sandman'
}

10.times do |index|
  Post.create(title: posts.keys.to_a.sample, body: posts.values.to_a.sample, user_id: (1..6).to_a.sample)
end

comments = ['Great Song!','Awesome!','Guitar is so great!','Song of my life.','This band is awesome','Such a beautiful intro.','Look at the man who is holding the drum sticks.','Red guitar!','Nice','Super']

10.times do |post_index|
  Comment.create(body: comments.sample, user_id: (1..6).to_a.sample, post_id: post_index)
end