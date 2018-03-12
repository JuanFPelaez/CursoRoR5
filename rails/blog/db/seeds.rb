# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.delete_all
Post.create!(
  title: "First Post!",
  introduction: "Test intro 1",
  content: "Test content 1",
  url: "url_de_prueba_1",
  image_url: "test.png",
  date: "2018/3/12"
  )

Post.create!(
  title: "Second Post!",
  introduction: "Test intro 2",
  content: "Test content 2",
  url: "url_de_prueba_2",
  image_url: "test.png",
  date: "2018/3/12"
  )

Post.create!(
  title: "Third Post!",
  introduction: "Test intro 3",
  content: "Test content 3",
  url: "url_de_prueba_3",
  image_url: "test.png",
  date: "2018/3/12"
  )
