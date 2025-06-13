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
  interior_photo_urls:[
    "https://www.cabanes-de-france.com/wp-content/uploads/2016/04/CC-Universelle-photo-400x211.jpg",
    "https://www.nidsdesvosges.com/wp-content/uploads/2021/08/125152752_645740502774185_3747083546574275167_n.jpeg",
    "https://img.freepik.com/photos-premium/cabane-rondins-cheminee-foyer-bois_917576-725.jpg?w=360"
  ],
  address: "Forêt de Fontainebleau, France",
  price_per_night: 85,
  rating: 4.9,
  description: "Une magnifique cabane perchée dans les arbres avec une vue imprenable sur la forêt.",
  user: owner
)

Flat.create!(
  name: "Cabane au bord du lac",
  photo_url: "https://as1.ftcdn.net/v2/jpg/09/18/71/16/1000_F_918711617_QHUezThIRMcRmbtNwoKxMwjTQpC5iyFR.jpg",
  interior_photo_urls:[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7rSE_aWSsmsAFF35xp8vSAaeXgWwi8gfDWjl4ifWQwEaRS2W7KdXd-eKUN9ep0CTF0R8&usqp=CAU",
    "https://www.cabanes-de-france.com/wp-content/uploads/2024/10/PXL_20240903_143923293.MP_-1-scaled.jpg"
  ],
  address: "Lac d'Annecy, France",
  price_per_night: 120,
  rating: 4.8,
  description: "Profitez du calme et de la nature dans cette cabane charmante au bord de l’eau.",
  user: owner
)

Flat.create!(
  name: "Cabane alpine moderne",
  photo_url: "https://as1.ftcdn.net/v2/jpg/15/08/67/20/1000_F_1508672021_fpzjm9ljSVU2s4cjc87XS3wmViZcQuVP.jpg",
  interior_photo_urls:[
    "https://www.telegraph.co.uk/content/dam/travel/2024/12/19/TELEMMGLPICT000405580806_17346228088340_trans_NvBQzQNjv4BqRo0U4xU-30oDveS4pXV-Vv4Xpit_DMGvdp2n7FDd82k.jpeg?imwidth=640",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBUsOFNPcx4GOOjEhh5k-_6uax3ET-b-eeLrg4dgxeXypdeDoNdt9yzv52ZPdUYN-UEh4&usqp=CAU"
  ],
  address: "Chamonix, France",
  price_per_night: 100,
  rating: 4.95,
  description: "Une cabane moderne et confortable dans les Alpes, idéale pour les amateurs de montagne.",
  user: owner
)


Flat.create!(
  name: "Cabane au bord de la rivière",
  photo_url: "https://www.cabanes-de-france.com/wp-content/uploads/2019/04/EBD6835-Modifier.jpg",
  interior_photo_urls:[
    "https://a0.muscache.com/im/pictures/airflow/Hosting-1064674873228765856/original/b364da7f-9670-492b-9af3-46e65131e6ed.jpg?im_w=720",
    "https://a0.muscache.com/im/pictures/hosting/Hosting-1388302213049841688/original/780c6e07-d031-4a4c-87f1-fd56b0a26527.jpeg?im_w=720",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdm2ijk76aTrJ65SyYjhh5d-tjhBILvcbfxE734NFMW2W_aZYA96IOSclzamjhVOtS5t4&usqp=CAU"
    ],
  address: "Vallée de la Loire, France",
  price_per_night: 90,
  rating: 4.7,
  description: "Une cabane tranquille avec un accès direct à la rivière, parfait pour se détendre.",
  user: owner2
)

Flat.create!(
  name: "Cabane rustique en montagne",
  photo_url: "https://media.istockphoto.com/id/170108380/fr/photo/chalet-suisse-pr%C3%A8s-de-zermatt.jpg?s=612x612&w=0&k=20&c=v4e0CbG_MqE2ryCh6WW9HIAp4isrL-NBpUMp6Tukqrg=",
  interior_photo_urls:[
    "https://i.pinimg.com/474x/37/a2/63/37a2633b90495414daa3e5d966e49a75.jpg",
    "https://i-mc.unimedias.fr/2023/06/23/m85_chalet_salon_cheminee_table_basse_fld.jpg?auto=format%2Ccompress&crop=faces&cs=tinysrgb&fit=max&w=1050",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxs8hZQ1JIhJU7-Gfy53pxhpfKzfIgK8zvgg&s"
  ],
  address: "Massif Central, France",
  price_per_night: 75,
  rating: 4.6,
  description: "Charmante cabane rustique au cœur des montagnes, ambiance chaleureuse garantie.",
  user: owner2
)

Flat.create!(
  name: "Cabane en bord de mer",
  photo_url: "https://www.voyageursdumonde.fr/voyage-sur-mesure/img/mag/201602/chambre-au-Playa-Viva.jpg",
  interior_photo_urls:[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShMtj-uaHL_6fpbm85TamPd2vaT2Nq-Sljx5QD1PQ_-e5230LoJJulj-RmNBVqCQOVLmw&usqp=CAU",
    "https://images.greengo.voyage/_/w_1440__q_75/plain/s3://greengobackend-production-media/pictures/accommmodation/ordered_images/img_e0527.jpg"
  ],
  address: "Côte d'Azur, France",
  price_per_night: 130,
  rating: 4.9,
  description: "Profitez de la vue sur la mer dans cette cabane confortable et moderne.",
  user: owner2
)

puts "Flats created!"

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

puts" EVERYTHING CREATED"
