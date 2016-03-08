20.times do
Person.create!(
  name: Faker::Name.name,
  gift: Faker::Book.title,
  description: Faker::Company.buzzword,
  email: Faker::Internet.email)

end


