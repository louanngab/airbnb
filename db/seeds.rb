puts "🧹 Nettoyage des données..."
Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "👤 Création de l'owner..."
owner = User.create!(
  email: "louann.gabillon@gmail.com",
  password: "Horse244",
  password_confirmation: "Horse244"
)

owner2 = User.create!(
  email: "lou@gmail.com",
  password: "Horse244",
  password_confirmation: "Horse244"
)

puts "🏡 Création des cabanes génériques..."
Flat.create!(
  name: "Cabane en forêt",
  photo_url: "https://as2.ftcdn.net/v2/jpg/11/07/74/57/1000_F_1107745749_a5TO8Y48YNiQv1rYSeMKJDly3SV0nuZI.jpg",
  address: "Forêt de Fontainebleau, France",
  price_per_night: 85,
  rating: 4.9,
  description: "Une magnifique cabane perchée dans les arbres avec une vue imprenable sur la forêt.",
  user: owner
)

Flat.create!(
  name: "Cabane au bord du lac",
  photo_url: "https://as1.ftcdn.net/v2/jpg/09/18/71/16/1000_F_918711617_QHUezThIRMcRmbtNwoKxMwjTQpC5iyFR.jpg",
  address: "Lac d'Annecy, France",
  price_per_night: 120,
  rating: 4.8,
  description: "Profitez du calme et de la nature dans cette cabane charmante au bord de l’eau.",
  user: owner
)

Flat.create!(
  name: "Cabane alpine moderne",
  photo_url: "https://as1.ftcdn.net/v2/jpg/15/08/67/20/1000_F_1508672021_fpzjm9ljSVU2s4cjc87XS3wmViZcQuVP.jpg",
  address: "Chamonix, France",
  price_per_night: 100,
  rating: 4.95,
  description: "Une cabane moderne et confortable dans les Alpes, idéale pour les amateurs de montagne.",
  user: owner
)

puts "👥 Création du locataire test..."
renter = User.create!(
  email: "locataire@test.com",
  password: "Horse244",
  password_confirmation: "Horse244"
)

puts "🏡 Création d’une cabane test de Lou Ann si non existante..."
flat = Flat.find_or_create_by!(name: "Cabane test de Lou Ann") do |f|
  f.address = "1 rue des Arbres, Lausanne"
  f.description = "Petite cabane paisible, idéale pour se détendre."
  f.price_per_night = 120
  f.user = owner
end

flat_not_yours = Flat.create!(
  name: "Cabane test pas à moi",
  address: "Rue des Peupliers, Paris",
  photo_url: "https://via.placeholder.com/300",
  price_per_night: 90,
  rating: 4.7,
  description: "Cabane d’un autre owner.",
  user: owner2
)

puts "📅 Création d'une réservation test..."
Booking.create!(
  user: renter,
  flat: flat,
  start_date: Date.today + 10,
  end_date: Date.today + 12,
  status: "pending"
)

Booking.create!(
  user: owner,
  flat: flat_not_yours,
  start_date: Date.today + 5,
  end_date: Date.today + 7,
  status: "pending"
)
puts "✅ Seed terminée avec succès !"
