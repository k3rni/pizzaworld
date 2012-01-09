# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pizzas = Pizza.create [ # menu z pizzy Eataliano :)
  { name: "Margarita", price: "17.50", description: "mozzarella, tomato sauce" },
  { name: "Funghi", price: "18.90", description: "mushrooms, mozzarella, tomato sauce" },
  { name: "Quattro Formaggi", price: "20.00", description: "gorgonzola, ementaler, gouda, mozzarella, tomato sauce" },
  { name: "Reno", price: "21.90", description: "ham, mushrooms, olives, mozzarella, tomato sauce" },
  { name: "Firenze", price: "21.90", description: "spinach, fried egg, parmesan, garlic olive oil, olives, mozzarella, tomato sauce" },
  { name: "Bali", price: "21.90", description: "pineapple, chicken, sun-dried tomatoes, mozzarella, tomato sauce" },
  { name: "Rucola e Parmiggiano", price: "22.50", description: "rucola, parmesan, olives, garlic olive oil, mozzarella, tomato sauce" },
  { name: "Quattro Carni", price: "22.50", description: "ham, spicy beef, pepperoni sausage, chicken, mozzarella, tomato sauce" },
  { name: "Tonno", price: "18.90", description: "tuna, red onions, capers, anchovies, olives, mozzarella, tomato sauce" }
]

restaurants = Restaurant.create [ #nie utworza sie, bo nie maja menu
    { name: "Mario's Pizza", address: "123 Mushroom Street", opening_hours: "Monday-Thursday: 11-22, Friday: 11-01, Saturday,Sunday: 11-23"},
    { name: "Trattoria Napoli", address: "555 Caesar Lane", opening_hours: "Monday-Friday: 11-23, Saturday,Sunday: 12-22"},
    { name: "Dominator Pizza", address: "1 Angel Square", opening_hours: "Monday-Sunday: 24h"}
    ]

pizzas.each_with_index do |pizza, i|
  restaurant = restaurants[i % restaurants.size]
  restaurant.pizzas << pizza
  restaurant.save # dopiero tutaj 
end
