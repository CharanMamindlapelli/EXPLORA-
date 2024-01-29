// ignore_for_file: public_member_api_docs, sort_construc
// class RecommendedPlaceModel {
//   final String image;
//   final double rating;
//   final String location;
//   RecommendedPlaceModel({
//     required this.image,
//     required this.rating,
//     required this.location,
//   });
// }

// List<RecommendedPlaceModel> recommendedPlaces = [
//   RecommendedPlaceModel(
//     image: "assets/places/place5.jpg",
//     rating: 4.4,
//     location: "Salarjum museum",
//   ),
//     RecommendedPlaceModel(
//     image: "assets/places/place4.jpg",
//     rating: 4.4,
//     location: "Golconda",
//   ),
//   RecommendedPlaceModel(
//     image: "assets/places/place3.jpg",
//     rating: 4.4,
//     location: "Durgam Cheruvu, Cable Bridge",
//   ),
//   RecommendedPlaceModel(
//     image: "assets/places/place2.jpg",
//     rating: 4.4,
//     location: "InOribit Mall",
//   ),
//   RecommendedPlaceModel(
//     image: "assets/places/place1.jpg",
//     rating: 4.4,
//     location: "CharMinar",
//   ),
// ];



// String selectedLocation = 'hyderabad'; // Default location

  Map<String, List<Map<String, String>>> locationImages = {
    'hyderabad': [
      {'imagePath': 'assets/places/place1.jpg', 'location': 'Charminar'},
      {'imagePath': 'assets/places/place2.jpg', 'location': 'Telangana_Secretarait'},
      {'imagePath': 'assets/places/place3.jpg', 'location': 'Durgam_Cheruvu_Bridge'},
      {'imagePath': 'assets/places/place4.jpg', 'location': 'Golkonda'},
      {'imagePath': 'assets/places/place5.jpg', 'location': 'Salarjung_Museum'},
      {'imagePath': 'assets/places/place6.jpg', 'location': 'Ramoji_Filmcity'},
      {'imagePath': 'assets/places/place7.jpg', 'location': 'Sarath_City_Capital_Mall'},
      {'imagePath': 'assets/places/place8.jpg', 'location': 'Shilparamam'},
      {'imagePath': 'assets/places/place9.jpg', 'location': 'Inorbit_Mall'},
      {'imagePath': 'assets/places/place10.jpg', 'location': 'Hussain_Sagar'},
    ],
    'adilabad': [
      {'imagePath': 'assets/adilabad/place1.jpg', 'location': 'Basar_Temple'},
      {'imagePath': 'assets/adilabad/place2.jpg', 'location': 'Jainath_Temple'},
      {'imagePath': 'assets/adilabad/place3.jpg', 'location': 'Kuntala'},
      {'imagePath': 'assets/adilabad/place4.jpg', 'location': 'Pochera_waterfalls'},
      {'imagePath': 'assets/adilabad/place5.jpg', 'location': 'Kawal_wildlife_Sancturary'},
    ],
    'karimnagar': [
      {'imagePath': 'assets/karimnagar/place1.jpg', 'location': 'Cable_Bridge'},
      {'imagePath': 'assets/karimnagar/place2.jpg', 'location': 'Mid_Manair'},
      {'imagePath': 'assets/karimnagar/place3.jpg', 'location': 'Vemulawada'},
      {'imagePath': 'assets/karimnagar/place4.jpg', 'location': 'Dharmapuri_Lakshminarasimhaswai_temple'},
      {'imagePath': 'assets/karimnagar/place5.jpg', 'location': 'Nampally_gutta'},
    ],
    'khammam': [
      {'imagePath': 'assets/khammam/image1.jpg', 'location': 'Badrachalam'},
      {'imagePath': 'assets/khammam/image2.jpg', 'location': 'Khammam_fort'},
      {'imagePath': 'assets/khammam/image3.jpg', 'location': 'Kinnersaani_Wildlife_Sancturary'},
      {'imagePath': 'assets/khammam/image4.jpg', 'location': 'Papikondalu'},
      {'imagePath': 'assets/khammam/image5.jpg', 'location': 'Parnashala'},
    ],
    'mahabubnagar': [
      {'imagePath': 'assets/mahabubnagar/image1.jpg', 'location': 'Allampur'},
      {'imagePath': 'assets/mahabubnagar/image2.jpg', 'location': 'Jurala_Project'},
      {'imagePath': 'assets/mahabubnagar/image3.jpg', 'location': 'Kollapur'},
      {'imagePath': 'assets/mahabubnagar/image4.jpg', 'location': 'Pillalamarri_Zoo_Park'},
      {'imagePath': 'assets/mahabubnagar/image5.jpg', 'location': 'Srisailam_Project'},
      {'imagePath': 'assets/mahabubnagar/image6.jpg', 'location': 'Wanaparthi_Palace'},
    ],
    'medak': [
      {'imagePath': 'assets/medak/image1.jpg', 'location': 'Medak_Church'},
      {'imagePath': 'assets/medak/image2.jpg', 'location': 'Komati_Cheruvu_Suspension_Bridge'},
      {'imagePath': 'assets/medak/image3.jpg', 'location': 'komuravelli_mallanna'},
      {'imagePath': 'assets/medak/image4.jpg', 'location': 'Koti_Lingeswara_Swamy_Temple'},
      {'imagePath': 'assets/medak/image5.jpg', 'location': 'Glow_Garden'},
    ],
    'nalgonda': [
      {'imagePath': 'assets/nalgonda/image1.jpg', 'location': 'Bhongir_fort'},
      {'imagePath': 'assets/nalgonda/image2.jpg', 'location': 'Devarakonda_fort'},
      {'imagePath': 'assets/nalgonda/image3.jpg', 'location': 'Nagarjuna_sagar'},
      {'imagePath': 'assets/nalgonda/image4.jpg', 'location': 'Nagarjunakonda'},
      {'imagePath': 'assets/nalgonda/image5.jpg', 'location': 'Yadhadri'},
    ],
    'nizamabad': [
      {'imagePath': 'assets/nizamabad/image1.jpg', 'location': 'Nizamsagar'},
      {'imagePath': 'assets/nizamabad/image2.jpg', 'location': 'Alisagar'},
      {'imagePath': 'assets/nizamabad/image3.jpg', 'location': 'Nizamabad_fort'},
      {'imagePath': 'assets/nizamabad/image4.jpg', 'location': 'Sriramsagar_project'},
      {'imagePath': 'assets/nizamabad/image5.jpg', 'location': 'Siddulagutta'},
      {'imagePath': 'assets/nizamabad/image6.jpg', 'location': 'Uttara_tirupati'},
    ],
    'rangareddy': [
      {'imagePath': 'assets/rangareddy/image1.jpg', 'location': 'Ananthgiri_hills'},
      {'imagePath': 'assets/rangareddy/image2.jpg', 'location': 'Chilkur_Balaji_Temple'},
      {'imagePath': 'assets/rangareddy/image3.jpg', 'location': 'Keesaragutta_Temple'},
      {'imagePath': 'assets/rangareddy/image4.jpg', 'location': 'Osmansagar_lake'},
      {'imagePath': 'assets/rangareddy/image5.jpg', 'location': 'Statue_of_Equality'},
    ],
    'warangal': [
      {'imagePath': 'assets/warangal/image1.jpg', 'location': 'Bogotha_Waterfalls'},
      {'imagePath': 'assets/warangal/image2.jpg', 'location': 'Laknavaram'},
      {'imagePath': 'assets/warangal/image3.jpg', 'location': 'Ramappa_Temple'},
      {'imagePath': 'assets/warangal/image4.jpg', 'location': 'Thousand_pillar_temple'},
      {'imagePath': 'assets/warangal/place5.jpg', 'location': 'Warangal_fort'},
      {'imagePath': 'assets/warangal/image6.jpg', 'location': 'Medaram'},
    ],

  };
