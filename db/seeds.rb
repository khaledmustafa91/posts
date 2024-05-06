# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create posts and reviews

user_ids = User.ids
(1..100).each do |i|
  User.create!(username: "Username#{i}")
  puts "User#{i}"
end

user_ids = User.ids

batch_size = 10000

(1..50000).step(batch_size) do |start_index|
  end_index = start_index + batch_size - 1

  posts = (start_index..end_index).each_with_object([]) do |i, memo|
    memo << { user_id: user_ids.sample, title: "Title#{i}", body: "Body#{i}" }
  end

  Post.insert_all(posts)
  puts "POST#{start_index}" 
end

posts_ids = Post.ids

batch_size = 10000

(1..20000).step(batch_size) do |start_index|
  end_index = start_index + batch_size - 1
  reviews = (start_index..end_index).each_with_object([]) do |i, memo|
    memo << { user_id: user_ids.sample, post_id: posts_ids.sample, rate: Random.rand(1..5), comment: "Comment#{i}" }
  end
  Review.insert_all(reviews)
  puts "Review#{start_index}"
end