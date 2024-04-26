# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all
Post_Tags.delete_all

User.create!(
  name: "John Doe",
  email: "jdoe@gmail.com",
  password: "mypassword1256"
)

User.create!(
  name: "Felipe Flores",
  email: "FF17@gmail.com",
  password: "limanchesterunited123"
)

User.create!(
  name: "Junior Fernandes",
  email: "JrFernandes9@gmail.com",
  password: "Mbappe66"
)

User.create!(
  name: "Roberto Cereceda",
  email: "electricocreceda@gmail.com",
  password: "Audax_tano12345"
)

User.create!(
  name: "Emiliano Vecchio",
  email: "EVecchio@gmail.com",
  password: "FuriaRoja_1934"
)

jr = User.find_by(name: "Junior Fernandes")
ff = User.find_by(name: "Felipe Flores")
jd = User.find_by(name: "John Doe")
rc = User.find_by(name: "Roberto Cereceda")
ev = User.find_by(name: "Roberto Cereceda")

Post.create!(
  title: "Hattrick Colo Colo",
  content: "Como olvidar ese hattrick a colo colo en el año 2012 https://www.youtube.com/watch?v=ikkbvW1Fb_Y",
  published_at: DateTime.strptime("2023-06-24 15:30", "%Y-%m-%d %H:%M"),
  answers_count: 500000,
  likes_count: 1000000,
  user_id: jr.id
)

Post.create!(
  title: "Esta Hinchada <3",
  content: "Con esta hinchada da gusto ir a jugar https://www.youtube.com/watch?v=T0NLiOMtZNw",
  published_at: DateTime.strptime("2012-03-11 12:30", "%Y-%m-%d %H:%M"),
  answers_count: 11,
  likes_count: 15,
  user_id: rc.id
)

Post.create!(
  title: "El gol mas gritado de mi carrera",
  content: "https://www.youtube.com/watch?v=PGD3OjvuaM8&t=25s",
  published_at: DateTime.strptime("2021-12-05 23:00", "%Y-%m-%d %H:%M"),
  answers_count: 600000,
  likes_count: 10000000,
  user_id: jr.id
)

Post.create!(
  title: "Tanos de corazon",
  content: "Los tanos de corazon le daran like a este post",
  user_id: rc.id,
  published_at: DateTime.strptime("2013-06-09 12:00", "%Y-%m-%d %H:%M"),
  answers_count: 0,
  likes_count: 0
)

Post.create!(
  title: "mi vuelta",
  content: "Este año vuelvo a mi casa, vamos la furia roja!",
  user_id: ev.id,
  published_at: DateTime.strptime("2024-01-30 12:13", "%Y-%m-%d %H:%M"),
  answers_count: 600,
  likes_count: 12000
)

Post.create!(
  title: "Mi nuevo Club",
  content: "Es de mi agrado anunciarles que seguire jugando futbol en Deportes Limache, Vamos Limanchester!",
  user_id: ff.id,
  published_at: DateTime.strptime("2024-01-04 12:13", "%Y-%m-%d %H:%M"),
  answers_count: 60000,
  likes_count: 750000
)

Post.create!(
  title: "Vamos Colo Colo",
  content: "Duro partido pero se pudo, Vamos Colo Colo!",
  user_id: ff.id,
  published_at: DateTime.strptime("2024-04-03 23:37", "%Y-%m-%d %H:%M"),
  answers_count: 6000,
  likes_count: 80000
)

Post.create!(
  title: "Post 1",
  content: "mi primer post, que golazo el de Angelo Henrriquez, Vamos la U!! https://www.youtube.com/watch?v=vdryUzAV4gA",
  user_id: jd.id,
  published_at: DateTime.strptime("2012-04-29 21:37", "%Y-%m-%d %H:%M"),
  answers_count: 60,
  likes_count: 800
)

Post.create!(
  title: "Lo admito..",
  content: "Lo admito, patie mal los corners ese partido contra la union",
  user_id: ev.id,
  published_at: DateTime.strptime("2021-09-17 11:53", "%Y-%m-%d %H:%M"),
  answers_count: 600,
  likes_count: 10000
)

Post.create!(
  title: "Se termino",
  content: "Finalmente se termino la maldicion awante Pogblete",
  user_id: jd.id,
  published_at: DateTime.strptime("2024-03-10 22:17", "%Y-%m-%d %H:%M"),
  answers_count: 70,
  likes_count: 9000
)

Tag.create!(
  name: "Tag 1"
)

Tag.create!(
  name: "JrFernandes"
)

Tag.create!(
  name: "VamoslaU"
)

Tag.create!(
  name: "Tanos"
)

Tag.create!(
  name: "FuriaRoja"
)
