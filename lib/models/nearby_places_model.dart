// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlaceModel {
  final String image;
  final String location;
  NearbyPlaceModel({
    required this.image,
    required this.location,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "assets/places/place7.jpg",
    location:"Sarath city Capital mall",
  ),
  NearbyPlaceModel(
    image: "assets/places/place6.jpg",
    location:"Ramoji Film city",
  ),
  NearbyPlaceModel(
    image: "assets/places/place5.jpg",
    location:"Ramoji Film city",
  ),
  NearbyPlaceModel(
    image: "assets/places/place4.jpg",
    location:"Ramoji Film city",
  ),
  NearbyPlaceModel(
    image: "assets/places/place3.jpg",
    location:"Ramoji Film city",
  ),
  NearbyPlaceModel(
    image: "assets/places/place2.jpg",
    location:"Ramoji Film city",
  ),
  NearbyPlaceModel(
    image: "assets/places/place8.jpg",
    location:"Ramoji Film city",
  ),
];
