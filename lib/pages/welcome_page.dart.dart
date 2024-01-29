import 'package:flutter/material.dart';
import 'package:travel/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/illustration.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  "Explore your journey \nonly with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "All your vacations destinations are here,\nenjoy your holiday",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text("Get Started"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:travel/pages/home_page.dart';
// import 'package:location/location.dart';

// class LocationPermissionPage extends StatefulWidget {
//   const LocationPermissionPage({Key? key}) : super(key: key);

//   @override
//   _LocationPermissionPageState createState() => _LocationPermissionPageState();
// }

// class _LocationPermissionPageState extends State<LocationPermissionPage> {
//   final Location _location = Location();
//   PermissionStatus? _permissionStatus;

//   @override
//   void initState() {
//     super.initState();
//     _checkLocationPermission();
//   }

//   Future<void> _checkLocationPermission() async {
//     final PermissionStatus status = await _location.hasPermission();
//     setState(() {
//       _permissionStatus = status;
//     });

//     if (status == PermissionStatus.denied) {
//       _requestLocationPermission();
//     } else if (status == PermissionStatus.granted) {
//       _navigateToHomePage();
//     }
//   }

//   Future<void> _requestLocationPermission() async {
//     final PermissionStatus status = await _location.requestPermission();

//     setState(() {
//       _permissionStatus = status;
//     });

//     if (status == PermissionStatus.granted) {
//       _navigateToHomePage();
//     }
//   }

//   void _navigateToHomePage() {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const HomePage(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 const Spacer(),
//                 // Your existing UI code here
//                 // ...
//                  Image.asset(
//                   'assets/illustration.png',
//                 ),
//                 const SizedBox(height: 40),
//                 const Text(
//                   "Explore your journey \nonly with us",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "All your vacations destinations are here,\nenjoy your holiday",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.black54,
//                     fontSize: 16,
//                   ),
//                 ),
//                 const Spacer(),
                
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 30),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_permissionStatus == PermissionStatus.granted) {
//                         _navigateToHomePage();
//                       } else {
//                         _requestLocationPermission();
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       elevation: 0,
//                       shape: const StadiumBorder(),
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 15,
//                         horizontal: 8.0,
//                       ),
//                     ),
//                     child: const Text("Get Started"),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
