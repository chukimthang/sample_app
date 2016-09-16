User.create!(name: "Chu Kim Thang", email: "chukimthang94@gmail.com",
  password: "123456", password_confirmation: "123456", admin: true,
  activated: true, activated_at: Time.zone.now)

40.times do |n|
  name = "user#{n}"
  email = "email#{n}@email.com"
  password = "password"
  password_confirmation = "password"

  User.create name: name, email:email, password: password,
    password_confirmation: password_confirmation,
    activated: true, activated_at: Time.zone.now
end

users = User.order(:created_at).take 6
50.times do
  content = Faker::Lorem.sentence 5
  users.each {|user| user.microposts.create! content: content}
end
