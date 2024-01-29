// import 'package:flutter/material.dart';

// class LocationCard extends StatelessWidget {
//   const LocationCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0.4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           children: [
//             Image.asset(
//               'assets/map.png',
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Your Location",
//                   style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                         color: Theme.of(context).primaryColor,
//                       ),
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   "Telangana, ",
//                   style: Theme.of(context).textTheme.labelLarge,
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }







// import 'package:flutter/material.dart';
// import 'package:travel/models/places_model.dart';
// import 'package:travel/widgets/recommended_places.dart';
// class LocationCard extends StatefulWidget {
//   const LocationCard({Key? key}) : super(key: key);

//   @override
//   _LocationCardState createState() => _LocationCardState();
// }

// class _LocationCardState extends State<LocationCard> {
//   String selectedLocation = "hyderabad"; // Default location

//   void _showLocationList(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) {
//         return Container(
//           height: MediaQuery.of(context).size.height * 0.4, // Adjust the height as needed
//           child: Column(
//             children: [
//               Expanded(
//                 child: ListView(
                  
//             children: [
//               ListTile(
//                 title: Text("Hyderabad"),
//                 onTap: () {
//                   _selectLocation("hyderabad");
//                   Navigator.pop(context);
//                   Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                   builder: (context) => RecommendedPlaces(selectedLocation: selectedLocation),
//                ),
//                );
                 
//                 },
//               ),
//               ListTile(
//                 title: Text("Adilabad"),
//                 onTap: () {
//                   _selectLocation("Adilabad");
//                   Navigator.pop(context);
//                  RecommendedPlaces(selectedLocation: selectedLocation);
                  
//                 },
//               ),
//                ListTile(
//                 title: Text("Karimnagar"),
//                 onTap: () {
//                   _selectLocation("Karimnagar");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Khammam"),
//                 onTap: () {
//                   _selectLocation("Khammam");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Mahaboobnagar"),
//                 onTap: () {
//                   _selectLocation("Mahaboobnagar");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Medak"),
//                 onTap: () {
//                   _selectLocation("Medak");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Nalgonda"),
//                 onTap: () {
//                   _selectLocation("Nalgonda");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Nizmabad"),
//                 onTap: () {
//                   _selectLocation("Nizmabad");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("RangaReddy"),
//                 onTap: () {
//                   _selectLocation("RangaReddy");
//                   Navigator.pop(context);
//                 },
//               ),
//                ListTile(
//                 title: Text("Warangal"),
//                 onTap: () {
//                   _selectLocation("Warangal");
//                   Navigator.pop(context);
//                 },
//               ),
//               // Add more locations as needed
//             ],
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _selectLocation(String location) {
//     setState(() {
//       selectedLocation = location;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0.4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: GestureDetector(
//           onTap: () => _showLocationList(context),
//           child: Row(
//             children: [
//               Image.asset(
//                 'assets/map.png',
//                 width: 100,
//               ),
//               const SizedBox(width: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Your Location",
//                     style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                           color: Theme.of(context).primaryColor,
//                         ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     "$selectedLocation",
//                     style: Theme.of(context).textTheme.labelLarge,
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:travel/pages/home_page.dart';
import 'package:travel/widgets/recommended_places.dart';
import 'package:travel/widgets/nearby_places.dart';

class LocationCard extends StatefulWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LocationCardState createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  String selectedLocation = "hyderabad"; // Default location

  void _showLocationList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Hyderabad"),
                      onTap: () {
                        _selectLocation("hyderabad");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Adilabad"),
                      onTap: () {
                        _selectLocation("adilabad");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Karimnagar"),
                      onTap: () {
                        _selectLocation("karimnagar");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Khammam"),
                      onTap: () {
                        _selectLocation("khammam");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Mahabubnagar"),
                      onTap: () {
                        _selectLocation("mahabubnagar");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Medak"),
                      onTap: () {
                        _selectLocation("medak");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Nalgonda"),
                      onTap: () {
                        _selectLocation("nalgonda");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Nizamabad"),
                      onTap: () {
                        _selectLocation("nizamabad");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Rangareddy"),
                      onTap: () {
                        _selectLocation("rangareddy");
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text("Warangal"),
                      onTap: () {
                        _selectLocation("warangal");
                        Navigator.pop(context);
                      },
                    ),
                    // Add more locations as needed
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _selectLocation(String location) {
    setState(() {
      selectedLocation = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0.4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () => _showLocationList(context),
              child: Row(
                children: [
                  Image.asset(
                    'assets/map.png',
                    width: 100,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Location",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "$selectedLocation",
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
       const SizedBox(height: 15), // Add some space between "Your Location" and "Recommended Places"
        Text(
          "Recommended Places",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        RecommendedPlaces(selectedLocation: selectedLocation),
        const SizedBox(height: 15), // Add some space between "Recommended Places" and "Nearby Places"
        Text(
          "Nearby Places",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        NearbyPlaces(selectedLocation: selectedLocation),
      ],
    );
  }
}

