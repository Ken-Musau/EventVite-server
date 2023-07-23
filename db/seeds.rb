puts "🌱 Seeding spices..."

# Seed your database here
host1 = Host.create(name: "ken", password: "12345", email: "ken@gmail.com")
host2 = Host.create(name: "steve", password: "12345", email: "steve@gmail.com")
host3 = Host.create(name: "emily", password: "12345", email: "emily@gmail.com")

event1 = Event.create(
  title: "Theatre of Violence",
  description: "At the age of 9, Dominic Ongwen is abducted by the Ugandan LRA",
  venue: "Nairobi cinema",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host1.id,
)

event2 = Event.create(
  title: "Unseen Mini Mornings",
  description: "Our Mini Mornings give smaller kids the chance to experience",
  venue: "Kitengela",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host2.id,
)

event3 = Event.create(
  title: "Clash of Shujaa",
  description: "Clash of Shujaa will be a live music event featuring Black Metal band:",
  venue: "westlands",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host1.id,
)

event4 = Event.create(
  title: "Digitisation Forum for MSMEs",
  description: "The forum explores and promotes the digitization of Micro, Small, and Medium Enterprises (MSMEs) in Kenya.",
  venue: "Nairobi garage",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host3.id,
)

event5 = Event.create(
  title: "Clash of Shujaa",
  description: "At the age of 9, Dominic Ongwen is abducted by the Ugandan LRA",
  venue: "Nairobi cinema",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host2.id,
)
event6 = Event.create(
  title: "Theatre of Violence",
  description: "Clash of Shujaa will be a live music event featuring Black Metal band:",
  venue: "Nairobi cinema",
  price: 650,
  image_url: "./assets/tov.jpg",
  date: "14th Jan 2023",
  host_id: host1.id,
)

puts "✅ Done seeding!"
