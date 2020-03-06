# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Meme.destroy_all
Like.destroy_all

u1 = User.create(name: "phil",age: 14)
u2 = User.create(name: "will",age: 17)
u3 = User.create(name: "bill",age: 90)
u4 = User.create(name: "lil",age: 22)

m1 = Meme.create(image:"https://i.pinimg.com/564x/b8/ac/16/b8ac164816dc7975900aad5fa038a124.jpg" , caption: "that moment when your mom is a dog")
m2 = Meme.create(image:"https://i.pinimg.com/474x/a6/1d/53/a61d535065ca9a04e10dbb08fa5f83eb.jpg" , caption: "Edit vs update")
m3 = Meme.create(image:"https://i.pinimg.com/564x/54/3f/11/543f11d14d36a11c960ae0d399095589.jpg" , caption: "Moving from Rails to Javascript")
m4 = Meme.create(image:"https://i.pinimg.com/564x/44/9b/0f/449b0f6f9d872a614330c0df9c20ba73.jpg" , caption: "When you find out Active record does everything for you.")
m5 = Meme.create(image:"https://i.pinimg.com/474x/84/3c/70/843c70d010aaf05b6285c05d093fddc6.jpg" , caption: "when you make all your models and controllers manually vs. using rails g")

Like.create(meme_id: m1.id, user_id: u1.id)
Like.create(meme_id: m1.id, user_id: u2.id)
