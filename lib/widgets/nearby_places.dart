import 'package:flutter/material.dart';
import 'package:travel/models/nearby_places_model.dart';
import 'package:travel/pages/tourist_details_page.dart';
import 'package:travel/widgets/distance.dart';

import '../models/recommended_places_model.dart';

class NearbyPlaces extends StatelessWidget {
   final String selectedLocation;
  const NearbyPlaces({Key? key,required this.selectedLocation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<Map<String, String>> locations = locationImages[selectedLocation] ?? [];

    return Column(
      children: List.generate(locations.length, (index) {
        final imagePath = locations[index]['imagePath'];
          final locationName = locations[index]['location'];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TouristDetailsPage(
                          image: imagePath,
                          locationName: locationName!,
                        timings: "01d:32h:56m", 
                        ),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePath!,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              locationName ??"",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Explora Team"),
                            const SizedBox(height: 10),
                            // DISTANCE WIDGET
                            const Distance(),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                const Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      text: "",
                                      children: const [
                                        TextSpan(
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                            ),
                                            text: "")
                                      ]),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:travel/models/nearby_places_model.dart';
// import 'package:travel/pages/tourist_details_page.dart';
// import 'package:travel/widgets/distance.dart';

// import '../models/recommended_places_model.dart';

// class NearbyPlaces extends StatefulWidget {
//   final String selectedLocation;
//   const NearbyPlaces({Key? key, required this.selectedLocation}) : super(key: key);

//   @override
//   _NearbyPlacesState createState() => _NearbyPlacesState();
// }

// class _NearbyPlacesState extends State<NearbyPlaces> {
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, String>> locations = locationImages[selectedLocation] ?? [];

//     return Column(
//       children: List.generate(nearbyPlaces.length, (index) {
//         return Padding(
//           padding: const EdgeInsets.only(bottom: 10),
//           child: SizedBox(
//             height: 135,
//             width: double.maxFinite,
//             child: Card(
//               elevation: 0.4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(12),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => TouristDetailsPage(
//                         image: nearbyPlaces[index].image,
//                         locationName: nearbyPlaces[index].location,
//                         timings: "01d:32h:56m",
//                       ),
//                     ),
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.asset(
//                           nearbyPlaces[index].image,
//                           height: double.maxFinite,
//                           width: 130,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Hyderbadi Places",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const Text("Explora Team"),
//                             const SizedBox(height: 10),
//                             // DISTANCE WIDGET
//                             const Distance(),
//                             const Spacer(),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow.shade700,
//                                   size: 14,
//                                 ),
//                                 const Text(
//                                   "4.5",
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 RichText(
//                                   text: TextSpan(
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                     text: "",
//                                     children: const [
//                                       TextSpan(
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.black54,
//                                         ),
//                                         text: "",
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:travel/pages/tourist_details_page.dart';
// import 'package:travel/widgets/distance.dart';
// import '../models/recommended_places_model.dart';


// class NearbyPlaces extends StatefulWidget {

//   final String selectedLocation;
//   const NearbyPlaces({Key? key, required this.selectedLocation}) : super(key: key);

//  @override
//   Widget build(BuildContext context) {
//      List<Map<String, String>> locations = locationImages[selectedLocation] ?? [];
//     return Column(
//       children: List.generate(locations.length, (index) {
//         final imagePath = locations[index]['imagePath'];
//           final locationName = locations[index]['location'];

//         return Padding(
//           padding: const EdgeInsets.only(bottom: 10),
//           child: SizedBox(
//             height: 135,
//             width: double.maxFinite,
//             child: Card(
//               elevation: 0.4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(12),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => TouristDetailsPage(
//                         image: imagePath ?? '',
//                         locationName: locationName ?? '',
//                         timings: "01d:32h:56m",
//                       ),
//                     ),
//                   );
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: Image.asset(
//                           imagePath ?? '',
//                           height: double.maxFinite,
//                           width: 130,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               widget.selectedLocation,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text("Explora Team"),
//                             const SizedBox(height: 10),
//                             // DISTANCE WIDGET
//                             const Distance(),
//                             const Spacer(),
//                             Row(
//                               children: [
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow.shade700,
//                                   size: 14,
//                                 ),
//                                 Text(
//                                   "4.5",
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 RichText(
//                                   text: TextSpan(
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                     text: "",
//                                     children: const [
//                                       TextSpan(
//                                         style: TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.black54,
//                                         ),
//                                         text: "",
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

// // class _NearbyPlacesState extends State<NearbyPlaces> {
// //   List<Map<String, String>> locations = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     locations = locationImages[widget.selectedLocation] ?? [];
// //   }

  
// // }
