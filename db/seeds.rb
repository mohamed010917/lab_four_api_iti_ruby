# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



user1 = User.create!(
  name: "Ahmed",
  email: "ahmed@test.com"
)

user2 = User.create!(
  name: "Mohamed",
  email: "mohamed@test.com"
)

post1 = Post.create!(
  title: "First Post",
  body: "Hello Rails",
  creator: user1
)

post2 = Post.create!(
  title: "Second Post",
  body: "Rails MVC",
  creator: user2
)

PostEditor.create!(
  post: post1,
  user: user2
)

PostEditor.create!(
  post: post2,
  user: user1
)