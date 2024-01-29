import 'package:flutter/material.dart';
import 'package:travel/models/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(touristPlaces[index].name),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image),
            ),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class TouristPlaces extends StatefulWidget {
//   const TouristPlaces({Key? key}) : super(key: key);

//   @override
//   _TouristPlacesState createState() => _TouristPlacesState();
// }

// class _TouristPlacesState extends State<TouristPlaces> {
//   List<String> imageUrls = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchTouristPlaces();
//   }

//   Future<void> fetchTouristPlaces() async {
//     final response = await http.get(Uri.parse('https://api.slingacademy.com/v1/sample-data/photos'));
//     if (response.statusCode == 200) {
//       final Map<String,dynamic> data = json.decode(response.body);
//       if (data.containsKey('photos')) {
//         final List<dynamic> photos = data['photos'];

//         if (photos.isNotEmpty) {
//           // Extracting all image URLs
//           List<String> urls = [];
//           for (var item in photos) {
//             urls.add(item['url']);
//           }

//           setState(() {
//             imageUrls = urls;
//           });
//         }
//       }
//     } else {
//       throw Exception('Failed to load tourist places');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40,
//       child: imageUrls != null
//           ? ListView.separated(
//               physics: const BouncingScrollPhysics(),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Chip(
//                   label: Text('image'),
//                   avatar: CircleAvatar(
//                     backgroundImage: NetworkImage(imageUrls[index]),
//                   ),
//                   backgroundColor: Colors.white,
//                   elevation: 0.4,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 );
//               },
//               separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.only(right: 10)),
//               itemCount: imageUrls.length,
//             )
//           : Center(child: CircularProgressIndicator()), // Show loading indicator while fetching data
//     );
//   }
// }

// class imageUrls {
//   final String name;
//   final String image;

//   imageUrls({required this.name, required this.image});

//   factory imageUrls.fromJson(Map<String, dynamic> json) {
//     return imageUrls(
//       name: json['name'] ?? '',
//       image: json['image'] ?? '',
//     );
//   }
// }
