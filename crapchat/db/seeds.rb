User.create!(first_name:  "Example first name1",
             last_name: "Example last name1",
             username: "username1",
             email: "fake1@me.com",
             password:              "foobar",
             password_confirmation: "foobar")

# 99.times do |n|
#   first_name  = Faker::User.name
#   email = "example-#{n+1}@crapchat.com"
#   password = "password"
#   User.create!(first_name:  first_name,
#   	           last_name:  last_name,
#   	           username: username,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.craps.create!(post: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }