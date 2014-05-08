puts 'Deleting all products'
Product.delete_all
puts 'Creating products'
Product.create(name: "Brown Shoe", description: "It's brown, it's a shoe", price: 13.99, category: 'Apparel')
Product.create(name: "Rose Colored Glasses", description: "To make you happy, happy", price: 23.49, category: 'Apparel')
Product.create(name: 'Motorized Fork', description: 'To stuff your gob more effienctly', price: 12.07, category: 'Kitchen')
Product.create(name: 'Brown Paper Bag', description: "Hide your booze, openly, in public for everyone to see", price: 1.44, category: 'Kitchen')
Product.create(name: 'Bouncy Castle', description: 'Perfect software development environment',  price: 1_200.00, category: 'Entertainment')
Product.create(name: 'Headphones', description: 'Phone for you head', price: 23.66, category: 'Entertainment')

puts 'Deleting all products'
Song.delete_all
puts 'Creating songs'
Song.create(title: 'Golden Age', genre: 'Rock', price: 1.49)
Song.create(title: 'Breathe', genre: 'ProgRock', price: 2.49)
Song.create(title: 'Norwegian Wood', genre: 'Rock', price: 1.99)
Song.create(title: 'Chocolate Jesus', genre: 'Folk', price: 1.79)
Song.create(title: 'Into the Dust', genre: 'Blues', price: 1.79)

