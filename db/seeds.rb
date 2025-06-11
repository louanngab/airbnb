puts "Cleaning flats..."
Flat.destroy_all
puts "Creating flats..."
Flat.create!(
  name: "Cabane en forêt",
  photo_url: "https://source.unsplash.com/800x400/?treehouse",
  address: "Forêt de Fontainebleau, France",
  price_per_night: 85,
  rating: 4.9,
  description: "Une magnifique cabane perchée dans les arbres avec une vue imprenable sur la forêt."
)
Flat.create!(
  name: "Cabane au bord du lac",
  photo_url: "https://source.unsplash.com/800x400/?lakehouse",
  address: "Lac d'Annecy, France",
  price_per_night: 120,
  rating: 4.8,
  description: "Profitez du calme et de la nature dans cette cabane charmante au bord de l’eau."
)
Flat.create!(
  name: "Cabane alpine moderne",
  photo_url: "https://source.unsplash.com/800x400/?mountain-cabin",
  address: "Chamonix, France",
  price_per_night: 100,
  rating: 4.95,
  description: "Une cabane moderne et confortable dans les Alpes, idéale pour les amateurs de montagne."
)
puts "Flats created!"
