import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/pages/welcome_page.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const WelcomePage(),
    );
  }
}










// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<String> imageUrls = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final response = await http.get(Uri.parse('https://api.slingacademy.com/v1/sample-data/photos'));

//     if (response.statusCode == 200) {
//       // If the server returns a 200 OK response, parse the JSON
//       final Map<String, dynamic> data = json.decode(response.body);

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
//       // If the server did not return a 200 OK response,
//       // throw an exception.
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fetch All Images'),
//       ),
//       body: ListView.builder(
//         itemCount: imageUrls.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               backgroundImage: NetworkImage(imageUrls[index]),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
