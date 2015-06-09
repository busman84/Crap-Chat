User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  first_name  = Faker::Name.name
  email = "example-#{n+1}@crapchat.com"
  password = "password"
  User.create!(first_name:  first_name,
  	           last_name:  last_name,
  	           username: username,
               email: email,
               password:              password,
               password_confirmation: password)
end