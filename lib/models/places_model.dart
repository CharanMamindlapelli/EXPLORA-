import 'package:flutter/material.dart';
import 'package:travel/widgets/location_card.dart';

class ImageDisplayScreen extends StatefulWidget {

  @override
  _ImageDisplayScreenState createState() => _ImageDisplayScreenState();
}

class _ImageDisplayScreenState extends State<ImageDisplayScreen> {
  String selectedLocation = 'hyderabad'; // Default location

  Map<String, List<Map<String, String>>> locationImages = {
    'hyderabad': [
      {'imagePath': 'assets/hyderabad/place1.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place2.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place3.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place4.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place5.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place6.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place7.jpg', 'location': 'Hyderabad'},
      {'imagePath': 'assets/hyderabad/place8.jpg', 'location': 'Hyderabad'},
    ],
    'adilabad': [
      {'imagePath': 'assets/adilabad/place1.jpg', 'location': 'Adilabad'},
      {'imagePath': 'assets/adilabad/place2.jpg', 'location': 'Adilabad'},
    ],
    // 'khammam': [
    //   {'imagePath': 'assets/khammam/image1.jpg', 'location': 'Khammam'},
    //   {'imagePath': 'assets/khammam/image2.jpg', 'location': 'Khammam'},
    // ],
    // 'warangal': [
    //   {'imagePath': 'assets/warangal/image1.jpg', 'location': 'Warangal'},
    //   {'imagePath': 'assets/warangal/image2.jpg', 'location': 'Warangal'},
    // ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedLocation,
            items: locationImages.keys.map((String location) {
              return DropdownMenuItem<String>(
                value: location,
                child: Text(location),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  selectedLocation = newValue;
                });
              }
            },
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: locationImages[selectedLocation]?.length,
              itemBuilder: (BuildContext context, int index) {
                final imagePath = locationImages[selectedLocation]?[index]['imagePath'];
                final location = locationImages[selectedLocation]?[index]['location'];

                return Column(
                  children: [
                    Image.asset(
                      imagePath!,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 4),
                    Text(location!),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
