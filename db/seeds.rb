def generate_random_email
    Faker::Internet.email
end

def generate_random_product(user)
    category = Product.categories.keys.sample
    user.products.create(
        name: Faker::Commerce.product_name,
        quantity: Faker::Number.between(from: 1, to: 100),
        price: Faker::Commerce.price,
        description: Faker::Lorem.sentence,
        category: category,
        created_at: Faker::Date.backward(days: 30),
        updated_at: Faker::Date.backward(days: 30),
    )
end

# IF u wanna test scaling, just up the numbers.
# to 200, 1000, 10000, etc. 

8.times do
    user = User.create(email: generate_random_email, password: 'projectrails' )

    generate_random_product(user)
end

puts 'Seed completed'