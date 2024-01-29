// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:travel/models/recommended_places_model.dart';
// import 'package:travel/pages/tourist_details_page.dart';

// class RecommendedPlaces extends StatelessWidget {
//   const RecommendedPlaces({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 235,
//       child: ListView.separated(
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return SizedBox(
//               width: 220,
//               child: Card(
//                 elevation: 0.4,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12),
//                   ),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(12),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => TouristDetailsPage(
//                             image: recommendedPlaces[index].image,
//                           ),
//                         ));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: Image.asset(
//                             recommendedPlaces[index].image,
//                             width: double.maxFinite,
//                             fit: BoxFit.cover,
//                             height: 150,
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         Row(
//                           children: [
//                             const Text(
//                               "St Regis Bora Bora",
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow.shade700,
//                               size: 14,
//                             ),
//                             const Text(
//                               "4.4",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             )
//                           ],
//                         ),
//                         const SizedBox(height: 5),
//                         Row(
//                           children: [
//                             Icon(
//                               Ionicons.location,
//                               color: Theme.of(context).primaryColor,
//                               size: 16,
//                             ),
//                             const SizedBox(width: 5),
//                             const Text(
//                               "French Polynesia",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (context, index) => const Padding(
//                 padding: EdgeInsets.only(right: 10),
//               ),
//           itemCount: recommendedPlaces.length),
//     );
//   }
// }





//  trail 2


// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
// import 'package:travel/models/recommended_places_model.dart';
// import 'package:travel/pages/tourist_details_page.dart';

// class RecommendedPlaces extends StatelessWidget {
//   const RecommendedPlaces({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 235,
//       child: ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return SizedBox(
//             width: 220,
//             child: Card(
//               elevation: 0.4,
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(12),
//                 ),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(12),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => TouristDetailsPage(
//                         image: recommendedPlaces[index].image,
//                       ),
//                     ),
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.asset(
//                           recommendedPlaces[index].image,
//                           width: double.maxFinite,
//                           fit: BoxFit.cover,
//                           height: 150,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: () => _launchMaps(recommendedPlaces[index].location),
//                             child: Text(
//                               recommendedPlaces[index].location,
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                             ),
//                           ),
//                           const Spacer(),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.yellow.shade700,
//                                 size: 14,
//                               ),
//                               Text(
//                                 "${recommendedPlaces[index].rating}",
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                       const SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Icon(
//                             Ionicons.location,
//                             color: Theme.of(context).primaryColor,
//                             size: 16,
//                           ),
//                           const SizedBox(width: 5),
//                           Text(
//                             "Hyderabad",
//                             style: TextStyle(
//                               fontSize: 12,
//                             ),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => const Padding(
//           padding: EdgeInsets.only(right: 10),
//         ),
//         itemCount: recommendedPlaces.length,
//       ),
//     );
//   }

//   // Function to launch maps with the location
//   _launchMaps(String location) async {
//     String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$location';
//     if (await canLaunch(mapsUrl)) {
//       await launch(mapsUrl);
//     } else {
//       throw 'Could not launch $mapsUrl';
//     }
//   }
// }


// --------------------------------------------------------------------------------------




// /trail 3



// recommended_places.dart
// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:travel/models/recommended_places_model.dart';
// import 'package:travel/pages/tourist_details_page.dart';
// import 'package:travel/models/places_model.dart';
// import 'package:travel/widgets/location_card.dart';

// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:travel/models/recommended_places_model.dart';
// import 'package:travel/widgets/location_card.dart';
// import '../pages/tourist_details_page.dart';



// class RecommendedPlaces extends StatefulWidget {
//   final String selectedLocation;

//   const RecommendedPlaces({Key? key, required this.selectedLocation}) : super(key: key);

//   @override
//   _RecommendedPlacesState createState() => _RecommendedPlacesState();
// }



// class _RecommendedPlacesState extends State<RecommendedPlaces> {
//   late final String  location;
//     @override
//   void initState() {
//     super.initState();
//     location = widget.selectedLocation;
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> locations = locationImages[location] ?? [];
    
//     return SizedBox(
//       height: 235,
//       child: ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           final imagePath = locationImages[location]?[index]['imagePath'];
//           final locationName = locationImages[location]?[index]['location'];

//           return SizedBox(
//             width: 220,
//             child: Card(
//               elevation: 0.4,
//               shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(12),
//                 ),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(12),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => TouristDetailsPage(
//                         image: imagePath,
//                         locationName: locationName,
//                         timings: "01d:32h:56m", // Replace with actual timings
//                       ),
//                     ),
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Expanded(
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: Image.asset(
//                             imagePath!,
//                             width: double.maxFinite,
//                             fit: BoxFit.cover,
//                             height: 150,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Flexible(
//                         child: Row(
//                           children: [
//                             Flexible(
//                               child: GestureDetector(
//                                 onTap: () => _launchMaps(locationName),
//                                 child: Text(
//                                   locationName!,
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     color: Theme.of(context).primaryColor,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             const Spacer(),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow.shade700,
//                                   size: 14,
//                                 ),
//                                 Text(
//                                   "${locations[index]['rating'] ?? 0}",
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Flexible(
//                         child: Row(
//                           children: [
//                             Icon(
//                               Ionicons.location,
//                               color: Theme.of(context).primaryColor,
//                               size: 16,
//                             ),
//                             const SizedBox(width: 5),
//                             Flexible(
//                               child: Text(
//                                 locationName,
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//         separatorBuilder: (context, index) => const Padding(
//           padding: EdgeInsets.only(right: 10),
//         ),
//         itemCount: locations.length,
//       ),
//     );
//   }

//   _launchMaps(String location) async {
//     String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$location';
//     if (await canLaunch(mapsUrl)) {
//       await launch(mapsUrl);
//     } else {
//       throw 'Could not launch $mapsUrl';
//     }
//   }
// }


import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travel/models/recommended_places_model.dart';

import '../pages/tourist_details_page.dart';

class RecommendedPlaces extends StatelessWidget {
  final String selectedLocation;

  const RecommendedPlaces({Key? key, required this.selectedLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> locations = locationImages[selectedLocation] ?? [];

    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final imagePath = locations[index]['imagePath'];
          final locationName = locations[index]['location'];

          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  // Handle onTap if needed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TouristDetailsPage(
                        image: imagePath,
                        locationName: locationName,
                        timings: "01d:32h:56m", // Replace with actual timings
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            imagePath!,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Flexible(
                        child: Row(
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () => _launchMaps(locationName),
                                child: Text(
                                  locationName!,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                Text(
                                  "${locations[index]['rating'] ?? 0}",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Flexible(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                locationName,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        itemCount: locations.length,
      ),
    );
  }

  _launchMaps(String location) async {
    String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$location';
    if (await canLaunch(mapsUrl)) {
      await launch(mapsUrl);
    } else {
      throw 'Could not launch $mapsUrl';
    }
  }
}
