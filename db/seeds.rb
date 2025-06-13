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

Flat.create!(
  name: "Cabane au bord de la rivière",
  photo_url: "https://www.cabanes-de-france.com/wp-content/uploads/2019/04/EBD6835-Modifier.jpg",
  address: "Vallée de la Loire, France",
  price_per_night: 90,
  rating: 4.7,
  description: "Une cabane tranquille avec un accès direct à la rivière, parfait pour se détendre."
)

Flat.create!(
  name: "Cabane rustique en montagne",
  photo_url: "https://media.istockphoto.com/id/170108380/fr/photo/chalet-suisse-pr%C3%A8s-de-zermatt.jpg?s=612x612&w=0&k=20&c=v4e0CbG_MqE2ryCh6WW9HIAp4isrL-NBpUMp6Tukqrg=",
  address: "Massif Central, France",
  price_per_night: 75,
  rating: 4.6,
  description: "Charmante cabane rustique au cœur des montagnes, ambiance chaleureuse garantie."
)

Flat.create!(
  name: "Cabane en bord de mer",
  photo_url: "https://www.voyageursdumonde.fr/voyage-sur-mesure/img/mag/201602/chambre-au-Playa-Viva.jpg",
  address: "Côte d'Azur, France",
  price_per_night: 130,
  rating: 4.9,
  description: "Profitez de la vue sur la mer dans cette cabane confortable et moderne."
)

puts "Flats created!"
