Product.destroy_all

product_list.each do |name, cost, origin|
  Product.create( name: name, cost: cost, origin: origin )
end

50.times do |index|
  Product.create(
                name: (Faker::Food.ingredient).downcase!,
                cost: Faker::Number.decimal(3, 2),
                origin: (Faker::Address.country).downcase!
end

p "You now have #{Product.count} products in your db"

Review.destroy_all

review_list.each do |author, content, rating|
  Review.create( author: author, content: content, rating: rating )
end

250.times do |index|
  Review.create(
                author: (Faker::Name.name).downcase!,
                content: Faker::Lorem.paragraph(3),
                rating: Faker::Number.(1)
end

p "You now have #{Review.count} reviews in your db"
