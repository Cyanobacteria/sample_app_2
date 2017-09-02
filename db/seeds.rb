# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
value = [["john", "john@john.john"], ["kiki", "kiki@kiki.kiki"],
         ["taph", "taph@taph.taph"], ["dan", "dan@dan.dan"], ["joy", "joy@joy.joy"]]
value.each do |v|
User.create(:name => "#{v[0]}", :email => "#{v[1]}",
             password: "aaaaaa", password_confirmation: "aaaaaa" )
end
