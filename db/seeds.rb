20.times do
  User.create(
    name: Faker::Name.name,  
    email: Faker::Internet.email,
    password: "password" 
  )
end

8.times do
  Clown.create(
    name: Faker::GreekPhilosophers.name,
    specialty: Faker::Games::Pokemon.name
  )
end

200.times do
  Booking.create(
    clown_id: Clown.all.sample.id,
    user_id: User.all.sample.id,
    location: Faker::Games::Pokemon.location
  )
end