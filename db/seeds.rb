20.times do
Person.create!(
  name: Faker::Name.name,
  gift: Faker::Book.title)

end


