number_of_seeds = 20

number_of_seeds.times {
  flat = Flat.new(
    name: Faker::Address.street_address,
    address: Faker::Address.city,
    description: Faker::Lorem.paragraph_by_chars(number: 256),
    price_per_night: (70..2000).to_a.sample,
    number_of_guests: (1..12).to_a.sample
  )
  flat.save
}