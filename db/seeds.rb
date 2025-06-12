puts "Cleaning flats..."
Flat.destroy_all
puts "Creating flats..."
Flat.create!(
  name: "Cabane en forêt",
  photo_url: "https://as2.ftcdn.net/v2/jpg/11/07/74/57/1000_F_1107745749_a5TO8Y48YNiQv1rYSeMKJDly3SV0nuZI.jpg",
  address: "Forêt de Fontainebleau, France",
  price_per_night: 85,
  rating: 4.9,
  description: "Une magnifique cabane perchée dans les arbres avec une vue imprenable sur la forêt."
)
Flat.create!(
  name: "Cabane au bord du lac",
  photo_url: "https://as1.ftcdn.net/v2/jpg/09/18/71/16/1000_F_918711617_QHUezThIRMcRmbtNwoKxMwjTQpC5iyFR.jpg",
  address: "Lac d'Annecy, France",
  price_per_night: 120,
  rating: 4.8,
  description: "Profitez du calme et de la nature dans cette cabane charmante au bord de l’eau."
)
Flat.create!(
  name: "Cabane alpine moderne",
  photo_url: "https://as1.ftcdn.net/v2/jpg/15/08/67/20/1000_F_1508672021_fpzjm9ljSVU2s4cjc87XS3wmViZcQuVP.jpg",
  address: "Chamonix, France",
  price_per_night: 100,
  rating: 4.95,
  description: "Une cabane moderne et confortable dans les Alpes, idéale pour les amateurs de montagne."
)
puts "Flats created!"
