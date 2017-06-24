# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Ben T', email: 'trevorb@nextcapital.com')
User.create(name: 'Jason S', email: 'shanmughamj@nextcapital.com')
User.create(name: 'Chris P', email: 'passolanoc@nextcapital.com')
User.create(name: 'Zhengchao L', email: 'liuz@nextcapital.com')

['Italian', 'American', 'Japanese', 'Chinese', 'Mediterranean', 'Mexican', 'Healthy'].each do |category_name|
  Category.create(name: category_name)
end

Restaurant.create(name: 'Potbelly', categories: [Category['American']])
Restaurant.create(name: 'Jimmy Johns', categories: [Category['American']])
Restaurant.create(name: 'Subway', categories: [Category['American']])
Restaurant.create(name: 'Chipotle', categories: [Category['Mexican']])
Restaurant.create(name: 'Pret', categories: [Category['Healthy']])
Restaurant.create(name: 'McDonalds', categories: [Category['American'], Category['Healthy']])
Restaurant.create(name: 'IDOF', categories: [Category['Mediterranean']])
Restaurant.create(name: 'Noodles', categories: [Category['American'], Category['Italian']])
Restaurant.create(name: 'Tokyo Lunchbox', categories: [Category['Japanese']])
