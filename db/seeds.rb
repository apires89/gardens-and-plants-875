# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garden.destroy_all
Tag.destroy_all

names = %w(fruit tree cactus plant flower fern)

garden = Garden.create!(
  name: "Retiro",
  banner_url: "https://cdn2.civitatis.com/espana/madrid/guia/el-retiro.jpg"
)

Plant.create(name: "Cactus",
image_url: "https://losviajesdeali.com/wp-content/uploads/2021/03/Jardin-de-Cactus-Lanzarote-15-1140x513.jpg",
garden: garden)

names.each do |name|
  Tag.create!(name: name)
end
